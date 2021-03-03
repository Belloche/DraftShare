package student.application.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity(name = "Draft")
@Table(name = "drafts")
public class Draft {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "native")
    @GenericGenerator(name = "native", strategy = "native")
    private int id;

    private String user;
    private String draftName;
    private String description;
    private int upvotes;
    private int downvotes;

    private String team1;
    private String pick1;
    private String pos1;
    private String uni1;

    private String team2;
    private String pick2;
    private String pos2;
    private String uni2;

    private String team3;
    private String pick3;
    private String pos3;
    private String uni3;

    private String team4;
    private String pick4;
    private String pos4;
    private String uni4;

    private String team5;
    private String pick5;
    private String pos5;
    private String uni5;

    private String team6;
    private String pick6;
    private String pos6;
    private String uni6;

    private String team7;
    private String pick7;
    private String pos7;
    private String uni7;

    private String team8;
    private String pick8;
    private String pos8;
    private String uni8;

    private String team9;
    private String pick9;
    private String pos9;
    private String uni9;

    private String team10;
    private String pick10;
    private String pos10;
    private String uni10;

    private String team11;
    private String pick11;
    private String pos11;
    private String uni11;

    private String team12;
    private String pick12;
    private String pos12;
    private String uni12;

    private String team13;
    private String pick13;
    private String pos13;
    private String uni13;

    private String team14;
    private String pick14;
    private String pos14;
    private String uni14;

    private String team15;
    private String pick15;
    private String pos15;
    private String uni15;

    private String team16;
    private String pick16;
    private String pos16;
    private String uni16;

    private String team17;
    private String pick17;
    private String pos17;
    private String uni17;

    private String team18;
    private String pick18;
    private String pos18;
    private String uni18;

    private String team19;
    private String pick19;
    private String pos19;
    private String uni19;

    private String team20;
    private String pick20;
    private String pos20;
    private String uni20;

    private String team21;
    private String pick21;
    private String pos21;
    private String uni21;

    private String team22;
    private String pick22;
    private String pos22;
    private String uni22;

    private String team23;
    private String pick23;
    private String pos23;
    private String uni23;

    private String team24;
    private String pick24;
    private String pos24;
    private String uni24;

    private String team25;
    private String pick25;
    private String pos25;
    private String uni25;

    private String team26;
    private String pick26;
    private String pos26;
    private String uni26;

    private String team27;
    private String pick27;
    private String pos27;
    private String uni27;

    private String team28;
    private String pick28;
    private String pos28;
    private String uni28;

    private String team29;
    private String pick29;
    private String pos29;
    private String uni29;

    private String team30;
    private String pick30;
    private String pos30;
    private String uni30;

    private String team31;
    private String pick31;
    private String pos31;
    private String uni31;

    private String team32;
    private String pick32;
    private String pos32;
    private String uni32;

    public Draft() {
    }

    public Draft(String user, String draftName, String description, int upvotes, int downvotes, String team1, String pick1, String pos1, String uni1, String team2, String pick2, String pos2, String uni2, String team3, String pick3, String pos3, String uni3, String team4, String pick4, String pos4, String uni4, String team5, String pick5, String pos5, String uni5, String team6, String pick6, String pos6, String uni6, String team7, String pick7, String pos7, String uni7, String team8, String pick8, String pos8, String uni8, String team9, String pick9, String pos9, String uni9, String team10, String pick10, String pos10, String uni10, String team11, String pick11, String pos11, String uni11, String team12, String pick12, String pos12, String uni12, String team13, String pick13, String pos13, String uni13, String team14, String pick14, String pos14, String uni14, String team15, String pick15, String pos15, String uni15, String team16, String pick16, String pos16, String uni16, String team17, String pick17, String pos17, String uni17, String team18, String pick18, String pos18, String uni18, String team19, String pick19, String pos19, String uni19, String team20, String pick20, String pos20, String uni20, String team21, String pick21, String pos21, String uni21, String team22, String pick22, String pos22, String uni22, String team23, String pick23, String pos23, String uni23, String team24, String pick24, String pos24, String uni24, String team25, String pick25, String pos25, String uni25, String team26, String pick26, String pos26, String uni26, String team27, String pick27, String pos27, String uni27, String team28, String pick28, String pos28, String uni28, String team29, String pick29, String pos29, String uni29, String team30, String pick30, String pos30, String uni30, String team31, String pick31, String pos31, String uni31, String team32, String pick32, String pos32, String uni32) {
        this.id = id;
        this.user = user;
        this.draftName = draftName;
        this.description = description;
        this.upvotes = upvotes;
        this.downvotes = downvotes;
        this.team1 = team1;
        this.pick1 = pick1;
        this.pos1 = pos1;
        this.uni1 = uni1;
        this.team2 = team2;
        this.pick2 = pick2;
        this.pos2 = pos2;
        this.uni2 = uni2;
        this.team3 = team3;
        this.pick3 = pick3;
        this.pos3 = pos3;
        this.uni3 = uni3;
        this.team4 = team4;
        this.pick4 = pick4;
        this.pos4 = pos4;
        this.uni4 = uni4;
        this.team5 = team5;
        this.pick5 = pick5;
        this.pos5 = pos5;
        this.uni5 = uni5;
        this.team6 = team6;
        this.pick6 = pick6;
        this.pos6 = pos6;
        this.uni6 = uni6;
        this.team7 = team7;
        this.pick7 = pick7;
        this.pos7 = pos7;
        this.uni7 = uni7;
        this.team8 = team8;
        this.pick8 = pick8;
        this.pos8 = pos8;
        this.uni8 = uni8;
        this.team9 = team9;
        this.pick9 = pick9;
        this.pos9 = pos9;
        this.uni9 = uni9;
        this.team10 = team10;
        this.pick10 = pick10;
        this.pos10 = pos10;
        this.uni10 = uni10;
        this.team11 = team11;
        this.pick11 = pick11;
        this.pos11 = pos11;
        this.uni11 = uni11;
        this.team12 = team12;
        this.pick12 = pick12;
        this.pos12 = pos12;
        this.uni12 = uni12;
        this.team13 = team13;
        this.pick13 = pick13;
        this.pos13 = pos13;
        this.uni13 = uni13;
        this.team14 = team14;
        this.pick14 = pick14;
        this.pos14 = pos14;
        this.uni14 = uni14;
        this.team15 = team15;
        this.pick15 = pick15;
        this.pos15 = pos15;
        this.uni15 = uni15;
        this.team16 = team16;
        this.pick16 = pick16;
        this.pos16 = pos16;
        this.uni16 = uni16;
        this.team17 = team17;
        this.pick17 = pick17;
        this.pos17 = pos17;
        this.uni17 = uni17;
        this.team18 = team18;
        this.pick18 = pick18;
        this.pos18 = pos18;
        this.uni18 = uni18;
        this.team19 = team19;
        this.pick19 = pick19;
        this.pos19 = pos19;
        this.uni19 = uni19;
        this.team20 = team20;
        this.pick20 = pick20;
        this.pos20 = pos20;
        this.uni20 = uni20;
        this.team21 = team21;
        this.pick21 = pick21;
        this.pos21 = pos21;
        this.uni21 = uni21;
        this.team22 = team22;
        this.pick22 = pick22;
        this.pos22 = pos22;
        this.uni22 = uni22;
        this.team23 = team23;
        this.pick23 = pick23;
        this.pos23 = pos23;
        this.uni23 = uni23;
        this.team24 = team24;
        this.pick24 = pick24;
        this.pos24 = pos24;
        this.uni24 = uni24;
        this.team25 = team25;
        this.pick25 = pick25;
        this.pos25 = pos25;
        this.uni25 = uni25;
        this.team26 = team26;
        this.pick26 = pick26;
        this.pos26 = pos26;
        this.uni26 = uni26;
        this.team27 = team27;
        this.pick27 = pick27;
        this.pos27 = pos27;
        this.uni27 = uni27;
        this.team28 = team28;
        this.pick28 = pick28;
        this.pos28 = pos28;
        this.uni28 = uni28;
        this.team29 = team29;
        this.pick29 = pick29;
        this.pos29 = pos29;
        this.uni29 = uni29;
        this.team30 = team30;
        this.pick30 = pick30;
        this.pos30 = pos30;
        this.uni30 = uni30;
        this.team31 = team31;
        this.pick31 = pick31;
        this.pos31 = pos31;
        this.uni31 = uni31;
        this.team32 = team32;
        this.pick32 = pick32;
        this.pos32 = pos32;
        this.uni32 = uni32;
    }

    public String getDraftName() {
        return draftName;
    }

    public void setDraftName(String draftName) {
        this.draftName = draftName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getUpvotes() {
        return upvotes;
    }

    public void setUpvotes(int upvotes) {
        this.upvotes = upvotes;
    }

    public int getDownvotes() {
        return downvotes;
    }

    public void setDownvotes(int downvotes) {
        this.downvotes = downvotes;
    }

    public String getTeam1() {
        return team1;
    }

    public void setTeam1(String team1) {
        this.team1 = team1;
    }

    public String getPick1() {
        return pick1;
    }

    public void setPick1(String pick1) {
        this.pick1 = pick1;
    }

    public String getPos1() {
        return pos1;
    }

    public void setPos1(String pos1) {
        this.pos1 = pos1;
    }

    public String getUni1() {
        return uni1;
    }

    public void setUni1(String uni1) {
        this.uni1 = uni1;
    }

    public String getTeam2() {
        return team2;
    }

    public void setTeam2(String team2) {
        this.team2 = team2;
    }

    public String getPick2() {
        return pick2;
    }

    public void setPick2(String pick2) {
        this.pick2 = pick2;
    }

    public String getPos2() {
        return pos2;
    }

    public void setPos2(String pos2) {
        this.pos2 = pos2;
    }

    public String getUni2() {
        return uni2;
    }

    public void setUni2(String uni2) {
        this.uni2 = uni2;
    }

    public String getTeam3() {
        return team3;
    }

    public void setTeam3(String team3) {
        this.team3 = team3;
    }

    public String getPick3() {
        return pick3;
    }

    public void setPick3(String pick3) {
        this.pick3 = pick3;
    }

    public String getPos3() {
        return pos3;
    }

    public void setPos3(String pos3) {
        this.pos3 = pos3;
    }

    public String getUni3() {
        return uni3;
    }

    public void setUni3(String uni3) {
        this.uni3 = uni3;
    }

    public String getTeam4() {
        return team4;
    }

    public void setTeam4(String team4) {
        this.team4 = team4;
    }

    public String getPick4() {
        return pick4;
    }

    public void setPick4(String pick4) {
        this.pick4 = pick4;
    }

    public String getPos4() {
        return pos4;
    }

    public void setPos4(String pos4) {
        this.pos4 = pos4;
    }

    public String getUni4() {
        return uni4;
    }

    public void setUni4(String uni4) {
        this.uni4 = uni4;
    }

    public String getTeam5() {
        return team5;
    }

    public void setTeam5(String team5) {
        this.team5 = team5;
    }

    public String getPick5() {
        return pick5;
    }

    public void setPick5(String pick5) {
        this.pick5 = pick5;
    }

    public String getPos5() {
        return pos5;
    }

    public void setPos5(String pos5) {
        this.pos5 = pos5;
    }

    public String getUni5() {
        return uni5;
    }

    public void setUni5(String uni5) {
        this.uni5 = uni5;
    }

    public String getTeam6() {
        return team6;
    }

    public void setTeam6(String team6) {
        this.team6 = team6;
    }

    public String getPick6() {
        return pick6;
    }

    public void setPick6(String pick6) {
        this.pick6 = pick6;
    }

    public String getPos6() {
        return pos6;
    }

    public void setPos6(String pos6) {
        this.pos6 = pos6;
    }

    public String getUni6() {
        return uni6;
    }

    public void setUni6(String uni6) {
        this.uni6 = uni6;
    }

    public String getTeam7() {
        return team7;
    }

    public void setTeam7(String team7) {
        this.team7 = team7;
    }

    public String getPick7() {
        return pick7;
    }

    public void setPick7(String pick7) {
        this.pick7 = pick7;
    }

    public String getPos7() {
        return pos7;
    }

    public void setPos7(String pos7) {
        this.pos7 = pos7;
    }

    public String getUni7() {
        return uni7;
    }

    public void setUni7(String uni7) {
        this.uni7 = uni7;
    }

    public String getTeam8() {
        return team8;
    }

    public void setTeam8(String team8) {
        this.team8 = team8;
    }

    public String getPick8() {
        return pick8;
    }

    public void setPick8(String pick8) {
        this.pick8 = pick8;
    }

    public String getPos8() {
        return pos8;
    }

    public void setPos8(String pos8) {
        this.pos8 = pos8;
    }

    public String getUni8() {
        return uni8;
    }

    public void setUni8(String uni8) {
        this.uni8 = uni8;
    }

    public String getTeam9() {
        return team9;
    }

    public void setTeam9(String team9) {
        this.team9 = team9;
    }

    public String getPick9() {
        return pick9;
    }

    public void setPick9(String pick9) {
        this.pick9 = pick9;
    }

    public String getPos9() {
        return pos9;
    }

    public void setPos9(String pos9) {
        this.pos9 = pos9;
    }

    public String getUni9() {
        return uni9;
    }

    public void setUni9(String uni9) {
        this.uni9 = uni9;
    }

    public String getTeam10() {
        return team10;
    }

    public void setTeam10(String team10) {
        this.team10 = team10;
    }

    public String getPick10() {
        return pick10;
    }

    public void setPick10(String pick10) {
        this.pick10 = pick10;
    }

    public String getPos10() {
        return pos10;
    }

    public void setPos10(String pos10) {
        this.pos10 = pos10;
    }

    public String getUni10() {
        return uni10;
    }

    public void setUni10(String uni10) {
        this.uni10 = uni10;
    }

    public String getTeam11() {
        return team11;
    }

    public void setTeam11(String team11) {
        this.team11 = team11;
    }

    public String getPick11() {
        return pick11;
    }

    public void setPick11(String pick11) {
        this.pick11 = pick11;
    }

    public String getPos11() {
        return pos11;
    }

    public void setPos11(String pos11) {
        this.pos11 = pos11;
    }

    public String getUni11() {
        return uni11;
    }

    public void setUni11(String uni11) {
        this.uni11 = uni11;
    }

    public String getTeam12() {
        return team12;
    }

    public void setTeam12(String team12) {
        this.team12 = team12;
    }

    public String getPick12() {
        return pick12;
    }

    public void setPick12(String pick12) {
        this.pick12 = pick12;
    }

    public String getPos12() {
        return pos12;
    }

    public void setPos12(String pos12) {
        this.pos12 = pos12;
    }

    public String getUni12() {
        return uni12;
    }

    public void setUni12(String uni12) {
        this.uni12 = uni12;
    }

    public String getTeam13() {
        return team13;
    }

    public void setTeam13(String team13) {
        this.team13 = team13;
    }

    public String getPick13() {
        return pick13;
    }

    public void setPick13(String pick13) {
        this.pick13 = pick13;
    }

    public String getPos13() {
        return pos13;
    }

    public void setPos13(String pos13) {
        this.pos13 = pos13;
    }

    public String getUni13() {
        return uni13;
    }

    public void setUni13(String uni13) {
        this.uni13 = uni13;
    }

    public String getTeam14() {
        return team14;
    }

    public void setTeam14(String team14) {
        this.team14 = team14;
    }

    public String getPick14() {
        return pick14;
    }

    public void setPick14(String pick14) {
        this.pick14 = pick14;
    }

    public String getPos14() {
        return pos14;
    }

    public void setPos14(String pos14) {
        this.pos14 = pos14;
    }

    public String getUni14() {
        return uni14;
    }

    public void setUni14(String uni14) {
        this.uni14 = uni14;
    }

    public String getTeam15() {
        return team15;
    }

    public void setTeam15(String team15) {
        this.team15 = team15;
    }

    public String getPick15() {
        return pick15;
    }

    public void setPick15(String pick15) {
        this.pick15 = pick15;
    }

    public String getPos15() {
        return pos15;
    }

    public void setPos15(String pos15) {
        this.pos15 = pos15;
    }

    public String getUni15() {
        return uni15;
    }

    public void setUni15(String uni15) {
        this.uni15 = uni15;
    }

    public String getTeam16() {
        return team16;
    }

    public void setTeam16(String team16) {
        this.team16 = team16;
    }

    public String getPick16() {
        return pick16;
    }

    public void setPick16(String pick16) {
        this.pick16 = pick16;
    }

    public String getPos16() {
        return pos16;
    }

    public void setPos16(String pos16) {
        this.pos16 = pos16;
    }

    public String getUni16() {
        return uni16;
    }

    public void setUni16(String uni16) {
        this.uni16 = uni16;
    }

    public String getTeam17() {
        return team17;
    }

    public void setTeam17(String team17) {
        this.team17 = team17;
    }

    public String getPick17() {
        return pick17;
    }

    public void setPick17(String pick17) {
        this.pick17 = pick17;
    }

    public String getPos17() {
        return pos17;
    }

    public void setPos17(String pos17) {
        this.pos17 = pos17;
    }

    public String getUni17() {
        return uni17;
    }

    public void setUni17(String uni17) {
        this.uni17 = uni17;
    }

    public String getTeam18() {
        return team18;
    }

    public void setTeam18(String team18) {
        this.team18 = team18;
    }

    public String getPick18() {
        return pick18;
    }

    public void setPick18(String pick18) {
        this.pick18 = pick18;
    }

    public String getPos18() {
        return pos18;
    }

    public void setPos18(String pos18) {
        this.pos18 = pos18;
    }

    public String getUni18() {
        return uni18;
    }

    public void setUni18(String uni18) {
        this.uni18 = uni18;
    }

    public String getTeam19() {
        return team19;
    }

    public void setTeam19(String team19) {
        this.team19 = team19;
    }

    public String getPick19() {
        return pick19;
    }

    public void setPick19(String pick19) {
        this.pick19 = pick19;
    }

    public String getPos19() {
        return pos19;
    }

    public void setPos19(String pos19) {
        this.pos19 = pos19;
    }

    public String getUni19() {
        return uni19;
    }

    public void setUni19(String uni19) {
        this.uni19 = uni19;
    }

    public String getTeam20() {
        return team20;
    }

    public void setTeam20(String team20) {
        this.team20 = team20;
    }

    public String getPick20() {
        return pick20;
    }

    public void setPick20(String pick20) {
        this.pick20 = pick20;
    }

    public String getPos20() {
        return pos20;
    }

    public void setPos20(String pos20) {
        this.pos20 = pos20;
    }

    public String getUni20() {
        return uni20;
    }

    public void setUni20(String uni20) {
        this.uni20 = uni20;
    }

    public String getTeam21() {
        return team21;
    }

    public void setTeam21(String team21) {
        this.team21 = team21;
    }

    public String getPick21() {
        return pick21;
    }

    public void setPick21(String pick21) {
        this.pick21 = pick21;
    }

    public String getPos21() {
        return pos21;
    }

    public void setPos21(String pos21) {
        this.pos21 = pos21;
    }

    public String getUni21() {
        return uni21;
    }

    public void setUni21(String uni21) {
        this.uni21 = uni21;
    }

    public String getTeam22() {
        return team22;
    }

    public void setTeam22(String team22) {
        this.team22 = team22;
    }

    public String getPick22() {
        return pick22;
    }

    public void setPick22(String pick22) {
        this.pick22 = pick22;
    }

    public String getPos22() {
        return pos22;
    }

    public void setPos22(String pos22) {
        this.pos22 = pos22;
    }

    public String getUni22() {
        return uni22;
    }

    public void setUni22(String uni22) {
        this.uni22 = uni22;
    }

    public String getTeam23() {
        return team23;
    }

    public void setTeam23(String team23) {
        this.team23 = team23;
    }

    public String getPick23() {
        return pick23;
    }

    public void setPick23(String pick23) {
        this.pick23 = pick23;
    }

    public String getPos23() {
        return pos23;
    }

    public void setPos23(String pos23) {
        this.pos23 = pos23;
    }

    public String getUni23() {
        return uni23;
    }

    public void setUni23(String uni23) {
        this.uni23 = uni23;
    }

    public String getTeam24() {
        return team24;
    }

    public void setTeam24(String team24) {
        this.team24 = team24;
    }

    public String getPick24() {
        return pick24;
    }

    public void setPick24(String pick24) {
        this.pick24 = pick24;
    }

    public String getPos24() {
        return pos24;
    }

    public void setPos24(String pos24) {
        this.pos24 = pos24;
    }

    public String getUni24() {
        return uni24;
    }

    public void setUni24(String uni24) {
        this.uni24 = uni24;
    }

    public String getTeam25() {
        return team25;
    }

    public void setTeam25(String team25) {
        this.team25 = team25;
    }

    public String getPick25() {
        return pick25;
    }

    public void setPick25(String pick25) {
        this.pick25 = pick25;
    }

    public String getPos25() {
        return pos25;
    }

    public void setPos25(String pos25) {
        this.pos25 = pos25;
    }

    public String getUni25() {
        return uni25;
    }

    public void setUni25(String uni25) {
        this.uni25 = uni25;
    }

    public String getTeam26() {
        return team26;
    }

    public void setTeam26(String team26) {
        this.team26 = team26;
    }

    public String getPick26() {
        return pick26;
    }

    public void setPick26(String pick26) {
        this.pick26 = pick26;
    }

    public String getPos26() {
        return pos26;
    }

    public void setPos26(String pos26) {
        this.pos26 = pos26;
    }

    public String getUni26() {
        return uni26;
    }

    public void setUni26(String uni26) {
        this.uni26 = uni26;
    }

    public String getTeam27() {
        return team27;
    }

    public void setTeam27(String team27) {
        this.team27 = team27;
    }

    public String getPick27() {
        return pick27;
    }

    public void setPick27(String pick27) {
        this.pick27 = pick27;
    }

    public String getPos27() {
        return pos27;
    }

    public void setPos27(String pos27) {
        this.pos27 = pos27;
    }

    public String getUni27() {
        return uni27;
    }

    public void setUni27(String uni27) {
        this.uni27 = uni27;
    }

    public String getTeam28() {
        return team28;
    }

    public void setTeam28(String team28) {
        this.team28 = team28;
    }

    public String getPick28() {
        return pick28;
    }

    public void setPick28(String pick28) {
        this.pick28 = pick28;
    }

    public String getPos28() {
        return pos28;
    }

    public void setPos28(String pos28) {
        this.pos28 = pos28;
    }

    public String getUni28() {
        return uni28;
    }

    public void setUni28(String uni28) {
        this.uni28 = uni28;
    }

    public String getTeam29() {
        return team29;
    }

    public void setTeam29(String team29) {
        this.team29 = team29;
    }

    public String getPick29() {
        return pick29;
    }

    public void setPick29(String pick29) {
        this.pick29 = pick29;
    }

    public String getPos29() {
        return pos29;
    }

    public void setPos29(String pos29) {
        this.pos29 = pos29;
    }

    public String getUni29() {
        return uni29;
    }

    public void setUni29(String uni29) {
        this.uni29 = uni29;
    }

    public String getTeam30() {
        return team30;
    }

    public void setTeam30(String team30) {
        this.team30 = team30;
    }

    public String getPick30() {
        return pick30;
    }

    public void setPick30(String pick30) {
        this.pick30 = pick30;
    }

    public String getPos30() {
        return pos30;
    }

    public void setPos30(String pos30) {
        this.pos30 = pos30;
    }

    public String getUni30() {
        return uni30;
    }

    public void setUni30(String uni30) {
        this.uni30 = uni30;
    }

    public String getTeam31() {
        return team31;
    }

    public void setTeam31(String team31) {
        this.team31 = team31;
    }

    public String getPick31() {
        return pick31;
    }

    public void setPick31(String pick31) {
        this.pick31 = pick31;
    }

    public String getPos31() {
        return pos31;
    }

    public void setPos31(String pos31) {
        this.pos31 = pos31;
    }

    public String getUni31() {
        return uni31;
    }

    public void setUni31(String uni31) {
        this.uni31 = uni31;
    }

    public String getTeam32() {
        return team32;
    }

    public void setTeam32(String team32) {
        this.team32 = team32;
    }

    public String getPick32() {
        return pick32;
    }

    public void setPick32(String pick32) {
        this.pick32 = pick32;
    }

    public String getPos32() {
        return pos32;
    }

    public void setPos32(String pos32) {
        this.pos32 = pos32;
    }

    public String getUni32() {
        return uni32;
    }

    public void setUni32(String uni32) {
        this.uni32 = uni32;
    }


}