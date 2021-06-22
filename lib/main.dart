import 'package:flutter/material.dart';


import 'detail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Harry Magic Spells',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: MyHomePage(title: 'Harry Magic Spells'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class MySuperHero {
  final String img;
  final String title;
  final String body;

  MySuperHero(this.img, this.title, this.body);
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isInterstitialAdLoaded = false;

  Widget _currentAd = SizedBox(
    width: 0.0,
    height: 0.0,
  );


  List<MySuperHero> items = new List<MySuperHero>();

  _MyHomePageState() {
    items.add(new MySuperHero("assets/1.png", "Accio",
        "Accio (Summoning Charm\nType: Charm\nDescription: Summons an object towards the caster. It is able to summon objects in direct line of sight of the caster, as well as things out of view, by calling the object aloud after the incantation (unless the spell is casted nonverbally). This spell needs thought behind it, and the object must be clear in the casters mind before trying to summon it.The caster doesn't necessarily need to know the location of the target if they say the name of the object to be summoned, such as when Hermione Granger summoned some books from Dumbledore's office simply by saying 'Accio Horcrux books!' while in Gryffindor Tower."));
    items.add(new MySuperHero("assets/2.png", "Aguamenti",
        "Aguamenti (Water-Making Spell)\nType: Charm, Conjuration\nPronunciation: AH-gwah-MEN-tee\nDescription: Produces a clean, drinkable jet of water from the wand tip.\nSeen/Mentioned: Used by Fleur Delacour in 1994 to extinguish her skirt, which had caught flame during a fight against a dragon. Harry used this spell twice in 1997, both on the same night; once to attempt to provide a drink for Dumbledore, then again to help douse Hagrid's hut after it was set aflame by Thorfinn Rowle, who used the Fire-Making Spell.\nEtymology: Possibly a hybrid of Latin words aqua, which means 'water', and menti, which means 'for the mind'."));
    items.add(new MySuperHero("assets/3.png", "Alarte Ascendare",
        "Alarte Ascendare\nType: Charm\nPronunciation: a-LAR-tay a-SEN-der-ay\nDescription: Shoots the target high into the air.Seen/Mentioned: Used by Gilderoy Lockhart in 1992 to send a snake high into the air during the first and last meeting of the Duelling Club. Etymology: Ascendere is a Latin infinitive meaning 'to go up', 'to climb', 'to embark', 'to rise(figuratively);' this is the origin of the English word 'ascend'.."));
    items.add(new MySuperHero("assets/4.png", "Alohomora",
        "Alohomora (Unlocking Charm)\nType: Charm\nPronunciation: ah-LOH-ho-MOR-ah\nDescription: Unlocks doors and other locked objects. It can also unlock doors that have been sealed with a Locking Spell, although it is possible to bewitch doors to become unaffected by this spell.\nSeen/Mentioned: Used by Hermione Granger in 1991 to allow her and her friends to access the Third-floor corridor at her school, which was at the time forbidden;[7] she used it again two years later to free Sirius's cell in her teacher's prison room.\nEtymology: The incantation is derived from the West African Sidiki dialect used in geomancy; it means 'friendly to thieves'."));
    items.add(new MySuperHero("assets/5.png", "Anapneo",
        "Anapneo\nType: Healing Spell, Vanishment\nPronunciation: ah-NAP-nee-oh\nDescription: Clears the target's airway if they are choking on something.\Seen/Mentioned: Used by Horace Slughorn, cast upon Marcus Belby when the latter choked on a pheasant in 1996.\nEtymology: From the Greek verb anapneo, meaning 'I breathe in.'"));
    items.add(new MySuperHero("assets/6.png", "Anteoculatia",
        "Anteoculatia\nType: Dark charm\nPronunciation: an-tee-oh-kyoo-LAY-chee-ah\Description: Causes the target to grow antlers.[\nSeen/Mentioned: This spell was used to make Pansy Parkinson grow antlers in 1996."));
    items.add(new MySuperHero("assets/7.png", "Aparecium",
        "Aparecium (Revealing Charm)\nType: Charm\nPronunciation: AH-par-EE-see-um\nDescription: Reveals secret messages written in invisible ink, or any other hidden markings. Also works against Concealing charms\nSeen/Mentioned: Used (to no avail) in 1993 by Hermione Granger to attempt to reveal any hidden writing in a diary.\nEtymology: Latin apparere, meaning 'to appear'; -ium and -cium are common Latin noun endings."));
    items.add(new MySuperHero("assets/8.png", "Appare Vestigium",
        "Appare Vestigium (Tracking Spell)\nType: Charm\\nPronunciation: ah-PAR-ay ves-TEE-jee-um\nDescription: Reveals traces of magic, including footprints and track marks.\nSeen/Mentioned: Newton Scamander used it to search for Porpentina Goldstein."));
    items.add(new MySuperHero("assets/9.png", "Aqua Eructo",
        "Type: Charm\nPronunciation: A-kwa ee-RUCK-toh\nDescription: This spell is used to create, and control, a jet of clear water from the tip of the wand; it is probably related to Aguamenti.\nSeen/Mentioned: Used multiple times to extinguish fires in 1994.nEtymology: Aqua means, in Latin, water. Eructo is a verb meaning 'I raise'; roughly translated, it means 'I raise water'."));
    items.add(new MySuperHero("assets/10.png", "Arania Exumai",
        "Type: Charm\nPronunciation: ah-RAHN-ee-a EKS-su-may\nDescription: Drives away spiders, including Acromantulas.\nSeen/Mentioned: Jacob's sibling used this spell to repel an Acromantula that guarded the Forest Vault in the Forbidden Forest.|nEtymology: From the Latin aranea, meaning 'spider', and exuo, meaning 'I lay aside'."));
    items.add(new MySuperHero("assets/11.png", "Arresto Momentum",
        "Arresto Momentum (Slowing Charm)\nType: Charm\nPronunciation: ah-REST-oh mo-MEN-tum\nDescription: Decreases the velocity of a moving target. Can be used on multiple targets, as well as on the caster themselves.\nSeen/Mentioned: Used by Dumbledore to save one of his students from a fall in 1993; Hermione Granger used it, to little effect, in 1998 to cushion an otherwise deadly fall.\nEtymology: Likely the combination of the Anglo-French arester, meaning 'to bring to a stop' and the Latin momentum, meaning 'the force or strength gained whilst moving'; the literal translation hence is 'Bring the force or strength gained whilst moving to a stop'."));
    items.add(new MySuperHero("assets/12.png", "Ascendio",
        "Ascendio\n\nType: Charm\nPronunciation: ah-SEN-dee-oh|nDescription: Lifts the caster high into the air. The charm also works underwater, propelling the caster above the surface.\nEtymology: Derived from Latin ascendo, meaning 'to climb'."));
    items.add(new MySuperHero("assets/13.png", "Avada Kedavra",
        "Avada Kedavra (Killing Curse)\nType: Curse\nPronunciation: ah-VAH-dah keh-DAV-rah\nDescription: Avada-Kedavra.gif\nCauses instantaneous death. It is accompanied by a flash of green light and a rushing noise. There is no known counter-curse that can protect the victim from dying, except for a loving sacrifice. It is one of the three Unforgivable Curses.\nSeen/Mentioned: Used by Tom Riddle to murder many of his victims without remorse.\nEtymology: Avada Kedavra is based on the Aramaic אַבַדָא כְּדַברָא, avada kedavra, meaning 'let the thing be destroyed'."));
    items.add(new MySuperHero("assets/14.png", "Avifors",
        "Avifors (Avifors Spell)\nType: Transfiguration\nPronunciation: AH-vi-fors\nDescription: Transforms the target into a bird.\nSeen/Mentioned: Taught in Transfiguration class.\nEtymology: From Latin avis meaning 'bird' and forma meaning 'shape'."));
    items.add(new MySuperHero("assets/15.png", "Avenseguim",
        "Avenseguim\nType: Charm\nPronunciation: ah-ven-SEH-gwim\nDescription: Turns an object into a tracking device.\nSeen/Mentioned: In 1927, Newton Scamander used this spell to track the origins of a feather - a clue found during his search for Porpentina Goldstein - back to Yusuf Kama, whose hat the feather came from.\nEtymology: The incantation Avenseguim is likely derived from the portmanteau of avens, a Latin adjective for 'eager' or 'craving', and seguir, the Spanish and Portuguese verb meaning 'to follow', or alternatively from the Catalan seguim, meaning 'we follow'. "));
    items.add(new MySuperHero("assets/16.png", "Avis",
        "Avis (Bird-Conjuring Charm)\nType: Conjuration, Charm\nPronunciation: AH-viss\nDescription: Conjures a flock of birds from the tip of the wand. When used in conjunction with Oppugno, it can be used offensively.\nSeen/Mentioned: Used in 1994 by Mr Ollivander to test Viktor Krum's wand. Also employed offensively by Hermione Granger against Ron Weasley.\nEtymology: The Latin word avis means 'bird'."));
    items.add(new MySuperHero("assets/17.png", "Baubillious",
        "Baubillious\nType: Charm[15]\nPronunciation: baw-BILL-ee-us\nDescription: The exact effects of the spell are unknown, though it presumably is of damaging nature and it produces a bolt of white light from the tip of the wand.[15]\nEtymology: Currently unclear, probably from English bauble.\nNotes: This is likely the incantation for White sparks."));
    items.add(new MySuperHero("assets/18.png", "Bombarda",
        "Bombarda (Exploding Charm)\nType: Charm\nPronunciation: bom-BAR-dah\nDescription: Provokes a small explosion.\nSeen/Mentioned: Taught in fourth year Charms class.\nEtymology: From the word bombard, meaning 'to attack a place or person continually with bombs or other missiles'."));
    items.add(new MySuperHero("assets/19.png", "Bombarda Maxima",
        "Bombarda Maxima\nType: Charm\nPronunciation: BOM-bar-dah MAX-ih-mah\nDescription: Creates a large explosion capable of removing entire walls. A more advanced and more powerful form of the Exploding Charm."));
    items.add(new MySuperHero("assets/20.png", "Brackium Emendo",
        "Brackium Emendo\nType: Charm, Healing Spell\nPronunciation: BRA-key-um ee-MEN-doh\nDescription: If used correctly, it is claimed that this spell will heal broken bones; this theory is supported by the etymology.\nSeen/Mentioned: Used unsuccessfully by Gilderoy Lockhart on Harry Potter in 1992 after the latter's arm was broken by a Bludger; it vanished all the bones, making it resemble rubber."));
    items.add(new MySuperHero("assets/21.png", "Calvorio",
        "Calvorio (Hair-Loss Curse)\nType: Curse\nPronunciation: cal-VOR-ee-oh\nDescription: Removes the victim's hair.\nSeen/Mentioned: The book Curses and Counter-Curses by Vindictus Viridian mentions this curse.[26]\nEtymology: From Latin calvus = 'bald'."));
    items.add(new MySuperHero("assets/1.png", "Cantis",
        "Cantis\nType: Charm\nPronunciation: CAN-tiss\nDescription: Causes the victim to burst uncontrollably into song.\nSeen/Mentioned: Used by the Hogwarts professors to enchant suits of armour.[27]\nEtymology: Cantare is Latin for 'sing'."));
    items.add(new MySuperHero("assets/2.png", "Capacious extremis",
        "Capacious extremis (Extension Charm)\nPronunciation: ca-PAY-shus ex-TREEM-us\nType: Charm\nDescription: Expands the internal dimensions of an object without affecting the external dimensions, enhancing its capacity, and rendering its contents lighter.\nSeen/Mentioned: This spell was used by Arthur Weasley to allow eight people, six large trunks, two owls, and a rat to fit comfortably inside his modified Ford Anglia in 1992. Also on the tent in which the Weasleys, Harry and Hermione stay during the Quidditch World Cup in 1994; the tent is also used by Harry, Ron and Hermione as shelter in 1997. Also, Hermione cast this spell upon her handbag in the same year."));
    items.add(new MySuperHero("assets/3.png", "Carpe Retractum",
        "Carpe Retractum (Seize and Pull Charm)\nType: Charm\nPronunciation: CAR-pay ruh-TRACK-tum\nDescription: Produces a rope of light used to pull objects towards the caster, or, if the target is fixed in place, to pull the caster towards the target.\nSeen/Mentioned: Taught in third year Charms class.\nEtymology: From the Latin carpe, meaning 'to seize' and retracto, meaning 'I draw back'."));
    items.add(new MySuperHero("assets/4.png", "Cave inimicum",
        "Cave inimicum\nType: Charm\nPronunciation: CAH-vay uh-NIM-i-kuhm\nDescription: Produces a boundary that keeps the caster hidden from others.\nSeen/Mentioned: Used multiple times by Hermione Granger in 1997 and 1998 to protect the tent she shared with Ron Weasley and Harry Potter.\nEtymology: The incantation is a Latin phrase which translates to 'beware of the enemy'."));
    items.add(new MySuperHero("assets/5.png", "Circumrota",
        "Circumrota\nType: Charm\nPronunciation: SIR-cum-roh-tuh\nDescription: Rotates objects.\nSeen/Mentioned: This spell was used by Leta Lestrange to rotate a record tower in the Records Room at the French Ministry of Magic Headquarters, revealing Newton Scamander and Porpentina Goldstein to be hiding behind the tower."));
    items.add(new MySuperHero("assets/6.png", "Cistem Aperio",
        "Cistem Aperio (Box Blasting Charm)\nType: Charm\nPronunciation: SIS-tem uh-PE-ree-o\nDescription: Opens chests and boxes.\nSeen/Mentioned: This spell was taught in fourth year Charms class at Hogwarts.\nEtymology: Aperio is Latin for 'uncover' or 'open'; Cista is Latin for 'trunk' or 'chest'."));
    items.add(new MySuperHero("assets/7.png", "Colloportus",
        "Colloportus (Locking Spell)\nType: Charm\nPronunciation: cul-loh-POR-tus\nDescription: Locks doors and all things that can be locked. It is the counter-charm to the Unlocking Spell.\nSeen/Mentioned: Used by Hermione Granger in 1996 in an attempt to prevent the Death Eaters that were following her from catching up.\nEtymology: Perhaps a portmanteau of the Latin words colligere, which means 'gather' and porta, which means 'gate'.\nNotes: This spell can easily be countered with Alohomora."));
    items.add(new MySuperHero("assets/8.png", "Colloshoo",
        "Colloshoo (Stickfast Hex)\nType: Hex\nPronunciation: CAWL-low-shoo\nDescription: Sticks the target's shoes to the ground.\nSeen/Mentioned: This spell is mentioned twice, once as having been used on Severus Snape during a potions class, the other when one reads Curses and Counter-Curses by Vindictus Viridian.\nEtymology: The suffix 'shoo' is a phonetic spelling of English 'shoe'; the prefix collo may come from Greek 'κολάω,κολώ' (pronounced 'colas','cols'), which means 'to glue'."));
    items.add(new MySuperHero("assets/9.png", "Colovaria",
        "Colovaria (Colour Change Charm)\nType: Charm\nPronunciation: co-loh-VA-riah\nDescription: Changes the target's colour.\nSeen/Mentioned: Used by fifth-years in their OWLs.\nEtymology: Almost certainly a combination of English 'colour' and 'vary'."));
    items.add(new MySuperHero("assets/10.png", "Confringo",
        "Confringo (Blasting Curse)\nType: Curse\nPronunciation: kon-FRING-goh\nDescription: Produces a fiery explosion.\nSeen/Mentioned: Used by Harry Potter to destroy the side-car of a motorbike in which he was riding during a battle against some Death Eaters in 1997; it was later used by Hermione Granger in an attempt to kill Nagini and facilitate an escape from Godric's Hollow.\nEtymology: The incantation is direct Latin for 'destroy'.\nNotes: This spell seems to use heat for its explosion, while Expulso uses pressure instead."));
    items.add(new MySuperHero("assets/11.png", "Confundo",
        "Confundo (Confundus Charm)\nType: Charm\nPronunciation: con-FUN-doh\nDescription: Causes the victim to become confused and befuddled.\nSeen/Mentioned: In 1994, Severus Snape asserted that Harry, Ron and Hermione had this charm cast on them so that they would believe Sirius Black's claim of innocence; used two years later by Hermione to allow Ron to join the Gryffindor Quidditch team. It was used multiple times in 1997 and 1998.\nEtymology: The incantation, when non-capitalised, means 'I confuse'; the title may derive from the Latin confundere, meaning 'to confuse' or 'to perplex.'"));
    items.add(new MySuperHero("assets/12.png", "Crinus Muto",
        "Crinus Muto\nType: Transfiguration\nDescription: Used to transfigure the colour and style of one's hair.\nSeen/Mentioned: This maybe be the spell that caused Harry to turn his eyebrow yellow in 1996. Harry may have used this spell to turn his teacher's hair blue."));
    items.add(new MySuperHero("assets/13.png", "Crucio",
        "Crucio (Cruciatus Curse)\nType: Curse\nPronunciation: KROO-see-oh\nDescription: Inflicts intense pain on the recipient of the curse. This curse does not physically harm the victim, but may in extreme cases drive them insane. The pain is described as having hot knives being driven into the victim. It cannot be cast successfully by a person who is doing so out of pure spite or anger; one must feel a true desire to cause the victim pain.\nSeen/Mentioned: Infamously used by Death Eaters Bellatrix Lestrange, Rabastan Lestrange, Rodolphus Lestrange and Bartemius Crouch Junior to torture the Aurors Frank and Alice Longbottom into insanity.\nEtymology: Latin crucio means 'I torture'."));
    items.add(new MySuperHero("assets/14.png", "Defodio",
        "Defodio (Gouging Spell)\nType: Charm\nPronunciation: deh-FOH-dee-oh\nDescription: Allows the caster to dig and carve through the target.\nSeen/Mentioned: Used by The Trio to escape from a bank in 1998 while riding a dragon. It was later used by Harry to write the epitaph for Dobby, who had been killed.\nEtymology: The incantation is Latin for 'I dig'."));
    items.add(new MySuperHero("assets/15.png", "Deletrius",
        "Deletrius (Eradication Spell)\nType: Charm\nPronunciation: deh-LEE-tree-us\nDescription: Counter-charm to the Reverse Spell, vanishing the image of the last spell cast. It may also disintegrate other certain images.\nSeen/Mentioned: This spell was only ever seen in 1994 when Amos Diggory used Prior Incantato to detect that Winky had cast Morsmordre using Harry Potter's wand.\nEtymology: Latin delere, meaning 'to destroy', and English 'detritus', meaning rubble."));
    items.add(new MySuperHero("assets/16.png", "Densaugeo",
        "Densaugeo\nType: Hex\nPronunciation: den-SAW-jee-oh\nDescription: This hex causes the victim's teeth to grow rapidly.\nSeen/Mentioned: Introduced in 1994, when Draco Malfoy's spell rebounded upon Hermione Granger; her teeth were past her collar before she was forced to run to the hospital to get them shrunk.\nEtymology: From Latin dens, meaning 'tooth', and augeo, meaning 'I enlarge'; essentially, it means 'I enlarge the tooth'."));
    items.add(new MySuperHero("assets/17.png", "Deprimo",
        "Deprimo\nType: Charm\nPronunciation: deh-PREEM-oh\nDescription: Charm used to blast holes in the ground.\nSeen/Mentioned: Hermione Granger blasted a hole through the living room floor of Xenophilius Lovegood's house in 1998 using this spell.\nEtymology: The incantation, when non-capitalised, means 'to depress' or 'depress'."));
    items.add(new MySuperHero("assets/18.png", "Depulso",
        "Depulso (Banishing Charm)\nType: Charm\nPronunciation: deh-PUL-soh\nDescription: Sends the target away from the caster. It is the counter-charm to the Summoning Charm.\nSeen/Mentioned: Although it is learned in the fourth-year charms class at Hogwarts, it is used multiple times in 1993, as well as in 1995.\nEtymology: From the Latin depulsio, meaning 'drive away'."));
    items.add(new MySuperHero("assets/19.png", "Descendo",
        "Descendo\nType: Charm\nPronunciation: deh-SEN-doh\nDescription: Causes object to fall or move downwards.[31]\nSeen/Mentioned: In 1997, it was used by Ron to magically cause the stairs in his bedroom, which lead to his family's attic, to descend; later that year, Crabbe used it in an attempt to cause a wall of rubbish behind which Ron was hiding to fall on him.\nEtymology: Descendo is Latin for 'I descend'."));
    items.add(new MySuperHero("assets/20.png", "Diffindo",
        "Diffindo (Severing Charm)\nType: Charm\nPronunciation: dih-FIN-doh\nDescription: Used to precisely cut or tear objects.\nSeen/Mentioned: Used twice in 1994, the first time being by Harry Potter to cut Cedric Diggory's bag in order to talk to the latter, and the second time being by Ron Weasley to cut the lace from the cuffs of his dress robes in an attempt to make them seem less feminine. The spell was used a third time by Harry to swap the covers of his second-hand and brand-new copies of Advanced Potion-Making.\nEtymology: Latin diffindere, meaning 'to divide' or 'to split'."));
    items.add(new MySuperHero("assets/21.png", "Diminuendo",
        "Diminuendo\nType: Charm\nPronunciation: dim-in-YEW-en-DOUGH\nDescription: Forces the target to shrink.\nSeen/Mentioned: Performed by Nigel Wolpert in 1995, during a Dumbledore's Army meeting.\nEtymology: The incantation derives from the musical term diminuendo, meaning 'a gradual decrease of the volume of sound'."));
    items.add(new MySuperHero("assets/1.png", "Dissendium",
        "Dissendium\nType: Charm\nPronunciation: dih-SEN-dee-um\nDescription: Used to open passages.\nSeen/Mentioned: Used multiple times in 1993 to open the statue of Gunhilda of Gorsemoor, then again four years later in a failed attempt to open Salazar Slytherin's Locket.\nEtymology: There are numerous suggestions.\nNotes: This may not be a spell at all in the strict sense but a password; however, when used for the statue of the hump-backed witch, one must tap the statue with their wand, indicating that it is in fact a spell."));
    items.add(new MySuperHero("assets/2.png", "Draconifors",
        "Draconifors (Draconifors Spell)\nType: Transfiguration\nPronunciation: drah-KOH-nih-fors\nDescription: Transforms the target into a dragon.\nSeen/Mentioned: Taught in third year Transfiguration class.\nEtymology: From the Latin word draco, meaning 'dragon', and forma meaning 'shape'."));
    items.add(new MySuperHero("assets/3.png", "Duro",
        "Duro (Hardening Charm)\nType: Charm\nPronunciation: DYOO-roh\nDescription: Turns an object to stone.\nSeen/Mentioned: Used by Hermione Granger in 1998 while escaping from Death Eaters in the Battle of Hogwarts.\nEtymology: Latin duro means 'harden'."));
    items.add(new MySuperHero("assets/4.png", "Ducklifors",
        "Ducklifors\nType: Transfiguration, Jinx\nPronunciation: DUCK-lih-fors\nDescription: Transforms the target into a duck.\nEtymology: From the English duck, and the Latin forma meaning 'shape'."));
    items.add(new MySuperHero("assets/5.png", "Ebublio",
        "Ebublio (Ebublio Jinx)\nType: Jinx\nPronunciation: ee-BUB-lee-oh\nDescription: Causes the victim to be trapped in a large bubble.\nSeen/Mentioned: Used often by members of the Statute of Secrecy Task Force."));
    items.add(new MySuperHero("assets/6.png", "Engorgio",
        "Engorgio (Engorgement Charm)\nType: Charm\nPronunciation: en-GOR-jee-oh\nDescription: Causes the target to swell in physical size. Its counter-charm is the Shrinking Charm.\nSeen/Mentioned: Rubeus Hagrid used this spell on his pumpkins in 1992; two years later, Barty Crouch Jnr cast this spell on a spider to make it easier for students to see when he cast a curse on it.\nEtymology: The English word engorge means 'swell'.\nNotes: There is much speculation that this spell is the same as the Growth Charm, though this cannot be proven. Note that there is a difference between enlarging and engorging something, similar though they may seem."));
    items.add(new MySuperHero("assets/7.png", "Engorgio Skullus",
        "Engorgio Skullus\nType: Dark charm\nPronunciation: in-GORE-jee-oh SKUH-las\nDescription: Causes the victim's skull to swell disproportionately. This spell may be a variation of the Engorgement Charm, as they share the first word of the incantation. Its countercurse is Redactum Skullus.\nEtymology: See etymology for above entry; 'skullus' is Latin for 'skull'."));
    items.add(new MySuperHero("assets/8.png", "Expelliarmus",
        "Expelliarmus (Disarming Charm)\nType: Charm\nPronunciation: ex-PELL-ee-ARE-muss\nDescription: Forces whatever an opponent is holding to fly out of their hand. It was considered to be Harry Potter's signature spell.[44]\nSeen/Mentioned: Used by Severus Snape on Gilderoy Lockhart during a live duelling demonstration during the first and last meeting of the Duelling Club in 1992.[40]\nEtymology: Probably a combination of Latin expello, meaning 'expel', and arma, meaning 'weapon'."));
    items.add(new MySuperHero("assets/9.png", "Evanesco",
        "Evanesco (Vanishing Spell)\nDespite super spy Natasha Romanoff’s checkered past, she’s become one of S.H.I.E.L.D.’s most deadly assassins and a frequent member of the Avengers."));
    items.add(new MySuperHero("assets/10.png", "Epoximise",
        "Epoximise\nType: Transfiguration\nPronunciation: ee-POX-i-mise\nDescription: Adheres one object to another, as if they had been glued together.\nSeen/Mentioned: This spell is often used by students to adhere each other's belongings to their desks (or, unfortunately, their hands).\nEtymology: Epoximise comes from the English word epoxy, which is a type of adhesive.\nNotes: This spell may be the Permanent Sticking Charm or a variation."));
    items.add(new MySuperHero("assets/11.png", "Ferula",
        "Ferula (Bandaging Charm)\nType: Conjuration, Healing spell\nPronunciation: fer-ROOL-lah\nDescription: Conjures up bandages and wraps them around a wound, splinting any broken bones.\nSeen/Mentioned: Used by Remus Lupin in 1994 to bind Ronald Weasley's broken leg.\nEtymology: Latin ferula means 'walking-stick' or 'splint'."));
    items.add(new MySuperHero("assets/12.png", "Fianto Duri",
        "Fianto Duri\nType: Charm\nPronunciation: fee-AN-toh DOO-ree\nDescription: A defensive charm which, based on the etymology, strengthens shield spells, and perhaps objects in general, in a similar way to Duro.\nSeen/Mentioned: Used to protect Hogwarts School of Witchcraft and Wizardry in 1998.\nEtymology: Latin fiant means 'become' and duri means 'hard'."));
    items.add(new MySuperHero("assets/13.png", "Finestra",
        "Finestra (Finestra spell)\nType: Charm\nPronunciation: fi-NESS-tra\nDescription: Shatters glass.\nSeen/Mentioned: On 6 December 1926, Newt Scamander shattered the front window of the Voclain & Co. jewellery store in New York using this spell to try and recapture his escaped niffler when he saw it loose inside the store stealing things."));
    items.add(new MySuperHero("assets/14.png", "Flipendo Maxima",
        "Flipendo Maxima\nType: Jinx\nDescription: A more powerful version of the Knockback Jinx, which threw the target back at a much greater force.\nSeen/Mentioned: Invented by Badeea Ali in the 1989–1990 school year, who taught it to fellow sixth year students."));
    items.add(new MySuperHero("assets/15.png", "Geminio",
        "Geminio (Doubling Charm)\nType: Charm\nPronunciation: jeh-MIH-nee-oh\nDescription: Duplicates the target. When used to duplicate objects indefinitely on purpose, is known as the Gemino Curse.\nSeen/Mentioned: Used by Hermione Granger on Salazar Slytherin's Locket to disguise her presence from Dolores Umbridge.\nEtymology: The Latin word gemini means 'twins'."));
    items.add(new MySuperHero("assets/16.png", "Glacius",
        "Glacius (Freezing Spell)\nType: Charm\nPronunciation: GLAY-see-us\nDescription: Freezes the target with icy-cold air.\nEtymology: From Latin glacies, which means 'ice'.\nNotes: Not to be confused with the Freezing Charm, which merely immobilises things."));
    items.add(new MySuperHero("assets/17.png", "Herbivicus",
        "Herbivicus (Herbivicus Charm)\nType: Charm\nPronunciation: her-BIV-i-cuss\nDescription: Rapidly grows plants.\nSeen/Mentioned: Taught by Professor Pomona Sprout in Herbology classes."));
    items.add(new MySuperHero("assets/18.png", "Homenum Revelio",
        "Homenum Revelio (Human-Presence-Revealing Spell)\nType: Charm\nPronunciation: HOM-eh-num reh-VEH-lee-oh\nDescription: Reveals human presence in the vicinity of the caster.\nSeen/Mentioned: Used multiple times by various people in 1997.\nEtymology: Most likely from Latin homo, meaning human, and 'reveal', though the classical Latin form would be hominem instead of homenum, which shows Portuguese influence ('man' is homem in Portuguese).\nNotes: It can be used non-verbally; Dumbledore does so to detect Harry underneath his Invisibility Cloak."));
    items.add(new MySuperHero("assets/19.png", "(Hour-Reversal Charm)",
        "(Hour-Reversal Charm)\nType: Charm\nDescription: Reverses small amounts of time (up to five hours).\nSeen/Mentioned: Used to create Time-Turners, as mentioned by Professor Saul Croaker; this charm is highly unstable.[49]"));
    items.add(new MySuperHero("assets/20.png", "Immobulus",
        "Immobulus (Freezing Charm)\nType: Charm\nPronunciation: ih-MOH-byoo-luhs\nDescription: Immobilises and stops the actions of the target. It works both on living and inanimate things.\nSeen/Mentioned: Hermione used it 1992 to freeze two Cornish Pixies.[51] Horace Slughorn used Freezing Charms to disable a Muggle Burglar Alarm.[52]\nEtymology: From the Latin “immobilis”, meaning immovable."));
    items.add(new MySuperHero("assets/21.png", "Impedimenta",
        "Impedimenta (Impediment Jinx)\nType: Jinx\nPronunciation: im-ped-ih-MEN-tah\nDescription: Slows down or stops the target.\nSeen/Mentioned: Used in 1995 when Harry was practising for the Third Task of the Triwizard Tournament. In 1996, Harry saw in a memory that James Potter used it on Severus Snape. Also used in 1997 by Harry against the Inferi and Snape. Stronger uses of this spell seem capable of blowing targets away.\nEtymology: Latin impedimentum (plural impedimenta), 'a hindrance' or 'an impediment'."));
    items.add(new MySuperHero("assets/1.png", "Impervius",
        "Impervius (Impervius Charm)\nType: Charm\nPronunciation: im-PUR-vee-us\nDescription: Makes an object repel water and mist.\nSeen/Mentioned: Used by Hermione Granger in 1993 on Harry's glasses while in a Quidditch match and also by the Gryffindor Quidditch team. Also used in 1997, first by Ron to protect objects in Yaxley's office from rain, and then by Hermione to protect Harry, Ron and Griphook from the burning treasure in the Lestranges' vault.\nEtymology: It is said that the Latin impervius means (and is the source of) 'impervious'; although it is the source of the word, it is better translated as impassable, as in a mountain peak."));
    items.add(new MySuperHero("assets/2.png", "Incendio",
        "Incendio (Fire-Making Spell)\nType: Charm, Conjuration\nPronunciation: in-SEN-dee-oh\nDescription: Produces fire.\nSeen/Mentioned: It was used in 1994 by Arthur Weasley to create a fire in the Dursleys' hearth so that he could use Floo Powder there.[54]\nEtymology: Latin incendere, 'to set fire (to)'. Note that the first principal part of this verb (meaning 'I set fire') is incendo, not incendio; the incantation does not match exactly any correct conjugation of the verb. Incêndio, in Portuguese (same pronunciation as in English) means 'huge fire'. 'Encender' in Spanish means 'to ignite' and 'Incendie' in French means flame. (A plausible but less likely source might be that it is a back-formation from the English word 'incendiary,' i.e., 'causing fire.'"));
    items.add(new MySuperHero("assets/3.png", "Lacarnum Inflamari",
        "Lacarnum Inflamari\nType: Charm\nPronunciation: la-KAR-num in-flah-MAR-ee\nDescription: Ignites cloaks.\nSeen/Mentioned:\nEtymology: Latin inflammo, or the verb inflammatio meaning 'to set on fire'. Lacarnum, from the Latin “lacerna”, meaning “cloak”."));
    items.add(new MySuperHero("assets/4.png", "Lumos",
        "Lumos (Wand-Lighting Charm)\nType: Charm\nPronunciation: LOO-mos\nDescription: Illuminates the tip of the caster's wand, allowing the caster to see in the dark.\nSeen/Mentioned: Used by Albus Dumbledore to illuminate the dark cave in 1997.\nEtymology: Latin lumen, 'light'.\nNotes: opposite incantation, Nox, puts the light out."));
    items.add(new MySuperHero("assets/5.png", "Lumos Maxima",
        "Lumos Maxima\nType: Charm\nPronunciation: LOO-mos Ma-cks-ima\nDescription: Produces a blinding flash of bright white light from the tip of the wand. It is a variant of the Wand-Lighting Charm.\nSeen/Mentioned: First practised by Harry in the home of the Dursleys, then used by Dumbledore to light up the cave of the Horcrux.\nEtymology: Lumos + maxima, Latin 'greatest.'"));
    items.add(new MySuperHero("assets/6.png", "Lumos Duo",
        "Lumos Duo (Wand-Lighting Charm Duo)\nType: Charm\nPronunciation: LOO-mos DOO-oh\nDescription: Creates a focused beam of light from the end of the wand. It is a variant of the Wand-Lighting Charm.\nEtymology: Lumos plus Latin duo, 'two'."));
    items.add(new MySuperHero("assets/7.png", "Lumos Solem",
        "Lumos Solem (Lumos Solem Spell)\nType: Charm\nPronunciation: LOO-mos SO-lem\nDescription: Produce a blinding flash of sunlight. It is a variant of the Wand-Lighting Charm.\nSeen/Mentioned: Used by Hermione to free Ron from the Devil's Snare. The incantation was only used in the film adaptation of Harry Potter and the Philosopher's Stone.\nEtymology: Derived from two words; the Latin lumen, meaning 'light', and the Latin word for 'sun', which in its accusative case is 'solem'.\nNotes: It is possible that the quality of the light is on the warmer solar end of the spectrum; Considering the known uses that the spell has been put to, it isn't that much of a stretch to presume that the spell is used to conjure Sunlight."));
    items.add(new MySuperHero("assets/8.png", "Meteolojinx Recanto",
        "Meteolojinx Recanto\nType: Counter-Charm\nPronunciation: mee-tee-OH-loh-jinks reh-CAN-toh.\nDescription: Causes weather effects caused by jinxes to cease.\nSeen/Mentioned: Suggested in 1997 by Arthur Weasley to Ron (disguised as Reginald Cattermole by use of Polyjuice Potion) as the best way to clear up the rain jinx on a Ministry office. Also used by Bartemius Crouch Jnr (Disguised as Alastor Moody) In 1994 to cease the weather effect of the Great Hall's Ceiling insisting it is broken as he told Dumbledore to 'Fix his ceiling'.\nEtymology: Meteorology, the study of weather, the word jinx and recant, 'to withdraw or retract'. Interestingly in modern English recant means to say that you no longer hold a belief."));
    items.add(new MySuperHero("assets/9.png", "Mobiliarbus",
        "Mobiliarbus\nType: Charm\nPronunciation: mo-bil-lee-AR-bus\nDescription: Levitates wooden objects a few inches off of the ground and moves them in any given direction.\nSeen/Mentioned: In 1993, Hermione Granger used the spell to move a Christmas Tree in The Three Broomsticks beside her table to hide Harry Potter, who was in Hogsmeade illegally.\nEtymology: Latin mobilis, 'movable' or 'flexible', and arbor (alternatively arbos), 'tree'.\nNotes: It is possible that Mobilicorpus and Mobiliarbus are variations of the same basic spell, since they share the 'Mobili-' stem."));
    items.add(new MySuperHero("assets/10.png", "Morsmordre",
        "Morsmordre\nType: Dark charm\nPronunciation: morz-MOR-druh\nDescription: Conjures the Dark Mark, which is the sign of the Death Eaters.\nSeen/Mentioned: Used by Bartemius Crouch Junior in 1994.[29] Also seen in 1997 over Hogwarts castle to lure Albus Dumbledore to his death. It was apparently invented by Lord Voldemort.\nEtymology: Latin mors, 'death', and mordere, meaning 'to bite' (or its French derivative mordre); this would appear to be associated with the name of Lord Voldemort's followers, the Death Eaters. The English murder might also contribute.\nNotes: A possible translation might be 'take a bite out of death', a fitting phrase for Death Eaters."));
    items.add(new MySuperHero("assets/11.png", "Muffliato",
        "Muffliato (Muffliato Charm)\nType: Charm\nPronunciation: muf-lee-AH-to\nDescription: Prevents others from hearing nearby conversations by filling peoples' ears with an unidentifiable buzzing.\nSeen/Mentioned: It was used in 1996 by Harry Potter and Ron Weasley on various teachers and people such as Madam Pomfrey. It was created by Severus Snape. As pointed out by Hermione, it is probably not Ministry of Magic approved. It was also used in 1997 by Hermione Granger in protection of the camp-site where Harry and she stayed in hiding.\nEtymology: English muffle, 'to quiet', with a pseudo-Latin or pseudo-Italian ending."));
    items.add(new MySuperHero("assets/12.png", "Nebulus",
        "Nebulus\nType: Charm\nPronunciation: NEH-bu-lus\nDescription: Creates fog from the tip of the wand.\nSeen/Mentioned: In 1927, Albus Dumbledore used this spell to conjure a fog in London to provide concealment for his meeting with Newton Scamander.\nNotes: This may be the incantation for the Ministry of Magic Fog."));
    items.add(new MySuperHero("assets/13.png", "Obliviate",
        "Obliviate (Memory Charm)\nType: Charm\nPronunciation: oh-BLI-vee-ate\nDescription: Erases specific memories.\nSeen/Mentioned: First seen in 1993 when used by Gilderoy Lockhart on Harry and Ron; the spell backfired due to a faulty wand, costing Lockhart most of his own memory. Also, Hermione Granger used this spell to wipe her parents memories in 1997. Again, it was used in 1997 when Hermione Granger used the spell on 2 Death Eaters who had followed Harry, Ron, and Hermione after their escape from Bill Weasley's and Fleur Delacour's wedding.\nEtymology: Latin oblivisci, 'forget'. The spell is most often used against Muggles who have seen something of the Wizarding world."));
    items.add(new MySuperHero("assets/14.png", "Oscausi",
        "Oscausi\nType: Dark charm\nPronunciation: os-SCOW-zee\nDescription: Seal someone's mouth shut, making it appear it was never there.\nSeen/Mentioned: Used by Leta Lestrange on a girl from Gryffindor when they were both in their third year at Hogwarts. The Gryffindor girl was speaking ill of Lestrange behind her back until Lestrange emerged from hiding nearby, and muted the Gryffindor girl with this spell.\nEtymology: Possibly derived as a portmanteau of os, Latin for 'mouth', and clausi (a conjugated form of claudo), Latin for 'I shut'. It may additionally be a pun or wordplay on scusi, the Italian interjection for 'excuse me'."));
    items.add(new MySuperHero("assets/15.png", "Piertotum Locomotor",
        "Piertotum Locomotor\nType: Charm\nPronunciation: peer-TOH-tuhm loh-kuh-MOH-tor\nDescription: Brings animates inanimate targets.[59]\nSeen/Mentioned: In the Battle of Hogwarts, Professor McGonagall used this spell to animate the suits of armour and statues within Hogwarts, to defend the castle.[59] Also used by Albus Dumbledore to enchant the statues on the fountain in the entrance to the Ministry of Magic Department.\nEtymology: Pier means 'friend' or 'colleague', totum refers to 'the whole' or 'total', and locomotor means 'the movement of'."));
    items.add(new MySuperHero("assets/16.png", "Protego Maxima",
        "Protego Maxima\nPronunciation: pro-TAY-goh MAX-ee-MaTwoProtego.JPG\nType: Charm\nDescription: A powerful shield charm against dark magic. A stronger and bigger version of Protego, especially when combined with other wizards casting it at the same time. Was so powerful that it could also disintegrate people that came too close and tried to enter it.\nSeen/Mentioned: Cast by Professor Flitwick, Professor McGonagall, Professor Slughorn and Mrs Weasley in an attempt to strengthen the castle's defences in the Battle of Hogwarts.\nEtymology: Latin Protego, 'I protect'"));
    items.add(new MySuperHero("assets/17.png", "Protego totalum",
        "Protego totalum\nType: Charm\nPronunciation: pro-TAY-goh toh-TAH-lum|nDescription: Protects an area for an extended period of time.|nSeen/Mentioned: In 1997, this was one of the spells used by Hermione Granger and Harry Potter to protect their camp site from unwanted visitors.\nEtymology: Latin protego meaning 'to protect' and Latin totus meaning 'as a whole'."));
    items.add(new MySuperHero("assets/18.png", "Redactum Skullus",
        "Redactum Skullus (Head Shrink Spell)\nType: Dark charm\nPronunciation: reh-DAK-tum SKULL-us\nDescription: Shrinks the head of the target. It is the counter-spell to Engorgio Skullus."));
    items.add(new MySuperHero("assets/19.png", "Reducto",
        "Reducto (Reductor Curse)\nType: Curse\nPronunciation: re-DUK-toh\nDescription: Breaks objects. In stronger usages, disintegrates them.\nSeen/Mentioned: In 1995, Harry used it on one of the hedges of the Triwizard maze and ends up burning a small hole in it; in 1995, Gryffindors in Harry Potter's year referenced Parvati Patil as being able to reduce a table full of Dark Detectors to ashes, and Harry and his friends later used the spell in the Department of Mysteries against the Death Eaters, shattering many Prophecy Orbs in the process; in 1997, a member of the Order of the Phoenix attempted to use this spell to break down a door which Death Eaters had blocked when the Death Eaters had cornered Dumbledore in the Lightning Struck Tower.\nEtymology: English reduce, 'to bring down;destroy'."));
    items.add(new MySuperHero("assets/20.png", "Repello Muggletum",
        "Repello Muggletum (Muggle-Repelling Charm)\nType: Charm\nPronunciation: ruh-PEL-oh MUH-guhl-tuhm\nDescription: Keeps Muggles away from wizarding places by causing them to remember important meetings they missed and to cause the Muggles in question to forget what they were doing.\nSeen/Mentioned: It was used to keep Muggles away from the Quidditch World Cup. Hogwarts was also said to be guarded by the Muggle-Repelling Charm. It was also used by Harry and Hermione on numerous occasions, among many other spells, to protect and hide their camp site in 1997."));
    items.add(new MySuperHero("assets/21.png", "Scourgify",
        "Scourgify (Scouring Charm)\nType: Charm\nPronunciation: SKUR-ji-fy\nDescription: Cleans objects\nSeen/Mentioned: First used by Nymphadora Tonks to clean Hedwig's cage in 1995. Later, Ginny Weasley performed the spell to clean up the Stinksap on the Hogwarts Express, also used by James Potter on Severus Snape after he shouted various curses and obscenities at him.\nEtymology: Perhaps related to English scour, 'clean'. -ify is a common English suffix meaning 'to make ...'. Therefore scourgify could mean 'to make clean.'"));
    items.add(new MySuperHero("assets/1.png", "Serpensortia",
        "Serpensortia (Snake Summons Spell)\nType: Conjuration\nPronunciation: ser-pen-SOR-shah, SER-pehn-SOR-tee-ah\nDescription: Conjures a serpent from the caster's wand.\nSeen/Mentioned: Used by Draco Malfoy while duelling Harry Potter in 1992.\nEtymology: Latin serpens meaning 'a snake' and Latin ortis meaning 'source'."));
    items.add(new MySuperHero("assets/2.png", "Tarantallegra",
        "Tarantallegra (Dancing Feet Spell)\nType: Charm\nPronunciation: ta-RON-ta-LEG-gra\nDescription: Makes a target's legs spasm wildly out of control, making it appear as though they are dancing.\nSeen/Mentioned: First used by Draco Malfoy on Harry Potter in the Duelling Club in 1992.[40]\nEtymology: Italian tarantella, a kind of fast country dance once popular in parts of Italy, supposedly from the frantic motion caused by the bite of a tarantula; and allegro, a musical term meaning 'quick'."));
  }

  Widget SuperHeroCell(BuildContext ctx, int index) {
    return GestureDetector(
      onTap: () {
        
        final snackBar = SnackBar(content: Text("Tap"));
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MyDetailPage(items[index])));
      },
      child: Card(
          margin: EdgeInsets.all(8),
          elevation: 4.0,
          child: Container(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Hero(
                      tag: items[index],
                      child: Image.asset(items[index].img),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      items[index].title,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Icon(Icons.navigate_next, color: Colors.black38),
              ],
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Center(
            child: new Text(widget.title, textAlign: TextAlign.center)),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) => SuperHeroCell(context, index),
      ),
    );
  }
}
