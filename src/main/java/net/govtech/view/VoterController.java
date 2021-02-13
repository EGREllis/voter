package net.govtech.view;

import net.govtech.model.VoterRegisterRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.Map;

@Controller
public class VoterController {
    public static final String VOTER_REGISTER_KEY = "voterRegister";
    public static final String CURRENT_USER = "currentUser";
    private VoterRegisterRequest mostRecentRequest;
    private Map<String, Integer> votes = new HashMap<>();

    @GetMapping("/")
    public String index(Map<String,Object> model) {
        model.put("validUser", mostRecentRequest != null);
        return "main";
    }

    @GetMapping("/registerVoter")
    public String registerVoter(Map<String,Object> model) {
        return "registerVoter";
    }

    @GetMapping("/castVote")
    public String castVote(Map<String, Object> model) {
        String viewName;
        if (mostRecentRequest == null) {
            viewName = "registerVoter";
        } else if (votes.containsKey(voterId(mostRecentRequest))) {
            model.put(CURRENT_USER, mostRecentRequest);
            viewName = "oneVoteOnly";
        } else {
            model.put(CURRENT_USER, mostRecentRequest);
            viewName = "castVote";
        }
        return viewName;
    }

    @GetMapping("/registerCouncil")
    public String registerCouncil(Map<String, Object> model) {
        return "registerCouncil";
    }

    @GetMapping("/declareElection")
    public String declareElection(Map<String, Object> model) {
        return "declareElection";
    }

    @GetMapping("/registerReturningOfficer")
    public String registerReturningOfficer(Map<String, Object> model) {
        return "registerReturningOfficer";
    }

    @GetMapping("/returningOfficerOverride")
    public String returningOfficerOverride(Map<String, Object> model) {
        return "returningOfficerOverride";
    }

    @PostMapping("/submitRegisterVoter")
    public String submitRegisterVoter(
            @RequestParam("firstName") String firstName,
            @RequestParam("lastName") String lastName,
            @RequestParam("firstAddr") String firstAddr,
            @RequestParam("secondAddr") String secondAddr,
            @RequestParam("county") String county,
            @RequestParam("city") String city,
            @RequestParam("postCode") String postCode,
            Map<String, Object> model
    ) {
        VoterRegisterRequest voterRegisterRequest = createRegisterVoterBean(firstName, lastName, firstAddr, secondAddr, city, county, postCode);
        model.put(VOTER_REGISTER_KEY, voterRegisterRequest);
        this.mostRecentRequest = voterRegisterRequest;
        return "registerVoterSuccessful";
    }

    @PostMapping("/submitVote")
    public String submitVote(@RequestParam("voteIndex") String voteIndex, Map<String, Object> param) {
        param.put(CURRENT_USER, this.mostRecentRequest);
        votes.put(voterId(mostRecentRequest), Integer.valueOf(voteIndex));
        return "voteSuccessful";
    }

    private VoterRegisterRequest createRegisterVoterBean(String firstName, String lastName, String firstAddr, String secondAddr, String city, String county, String postCode) {
        VoterRegisterRequest request = new VoterRegisterRequest();
        request.setFirstName(firstName);
        request.setLastName(lastName);
        request.setFirstAddr(firstAddr);
        request.setSecondAddr(secondAddr);
        request.setCity(city);
        request.setCounty(county);
        request.setPostCode(postCode);
        return request;
    }

    private String voterId(VoterRegisterRequest request) {
        return String.format("%1$s,%2$s", request.getLastName(), request.getFirstName());
    }
}
