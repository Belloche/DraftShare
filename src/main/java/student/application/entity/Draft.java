package student.application.entity;

import lombok.*;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity(name = "Draft")
@Table(name = "drafts")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Draft {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "native")
    @GenericGenerator(name = "native", strategy = "native")
    private int id;

    @Column(name = "user_id")
    private int userId;
    
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

    public String getLogo(String path) {
        String logo = "images/" + path + ".png";

        return logo;
    }
}