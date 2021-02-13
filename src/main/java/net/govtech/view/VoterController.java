package net.govtech.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Map;

@Controller
public class VoterController {
    @GetMapping("/")
    public String index(Map<String,Object> model) {
        return "main";
    }

    @GetMapping("/registerVoter")
    public String registerVoter(Map<String,Object> model) {
        return "registerVoter";
    }

    @GetMapping("/castVote")
    public String castVote(Map<String, Object> model) {
        return "castVote";
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
}
