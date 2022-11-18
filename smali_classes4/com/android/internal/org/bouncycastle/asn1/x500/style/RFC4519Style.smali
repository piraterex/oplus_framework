.class public Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;
.super Lcom/android/internal/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;
.source "RFC4519Style.java"


# static fields
.field private static final blacklist DefaultLookUp:Ljava/util/Hashtable;

.field private static final blacklist DefaultSymbols:Ljava/util/Hashtable;

.field public static final blacklist INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

.field public static final blacklist businessCategory:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist c:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist cn:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist dc:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist description:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist destinationIndicator:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist distinguishedName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist dnQualifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist enhancedSearchGuide:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist facsimileTelephoneNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist generationQualifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist givenName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist houseIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist initials:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist internationalISDNNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist l:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist member:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist name:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist o:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist ou:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist owner:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist physicalDeliveryOfficeName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist postOfficeBox:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist postalAddress:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist postalCode:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist preferredDeliveryMethod:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist registeredAddress:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist roleOccupant:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist searchGuide:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist seeAlso:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist sn:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist st:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist street:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist telephoneNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist teletexTerminalIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist telexNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist title:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist uid:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist uniqueMember:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist userPassword:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist x121Address:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist x500UniqueIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field protected final blacklist defaultLookUp:Ljava/util/Hashtable;

.field protected final blacklist defaultSymbols:Ljava/util/Hashtable;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 63

    .line 20
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.15"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->businessCategory:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 21
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "2.5.4.6"

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->c:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 22
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "2.5.4.3"

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sput-object v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->cn:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 23
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "0.9.2342.19200300.100.1.25"

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->dc:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 24
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "2.5.4.13"

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->description:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 25
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v6, "2.5.4.27"

    invoke-direct {v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    sput-object v5, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->destinationIndicator:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 26
    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "2.5.4.49"

    invoke-direct {v6, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    sput-object v6, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->distinguishedName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 27
    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v8, "2.5.4.46"

    invoke-direct {v7, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    sput-object v7, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->dnQualifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 28
    new-instance v8, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v9, "2.5.4.47"

    invoke-direct {v8, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    sput-object v8, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->enhancedSearchGuide:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 29
    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v10, "2.5.4.23"

    invoke-direct {v9, v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v9

    sput-object v9, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->facsimileTelephoneNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 30
    new-instance v10, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v11, "2.5.4.44"

    invoke-direct {v10, v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v10

    sput-object v10, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->generationQualifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 31
    new-instance v11, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v12, "2.5.4.42"

    invoke-direct {v11, v12}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v11

    sput-object v11, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->givenName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 32
    new-instance v12, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v13, "2.5.4.51"

    invoke-direct {v12, v13}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v12

    sput-object v12, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->houseIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 33
    new-instance v13, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v14, "2.5.4.43"

    invoke-direct {v13, v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v13

    sput-object v13, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->initials:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 34
    new-instance v14, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "2.5.4.25"

    invoke-direct {v14, v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v14

    sput-object v14, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->internationalISDNNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 35
    new-instance v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v16, v14

    const-string v14, "2.5.4.7"

    invoke-direct {v15, v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v14

    sput-object v14, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->l:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 36
    new-instance v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v17, v14

    const-string v14, "2.5.4.31"

    invoke-direct {v15, v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v14

    sput-object v14, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->member:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 37
    new-instance v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v18, v14

    const-string v14, "2.5.4.41"

    invoke-direct {v15, v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v14

    sput-object v14, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->name:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 38
    new-instance v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v19, v14

    const-string v14, "2.5.4.10"

    invoke-direct {v15, v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v14

    sput-object v14, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->o:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 39
    new-instance v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v20, v14

    const-string v14, "2.5.4.11"

    invoke-direct {v15, v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v14

    sput-object v14, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->ou:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 40
    new-instance v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v21, v14

    const-string v14, "2.5.4.32"

    invoke-direct {v15, v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v14

    sput-object v14, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->owner:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 41
    new-instance v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v22, v14

    const-string v14, "2.5.4.19"

    invoke-direct {v15, v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v14

    sput-object v14, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->physicalDeliveryOfficeName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 42
    new-instance v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v23, v14

    const-string v14, "2.5.4.16"

    invoke-direct {v15, v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v14

    sput-object v14, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->postalAddress:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 43
    new-instance v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v24, v14

    const-string v14, "2.5.4.17"

    invoke-direct {v15, v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v14

    sput-object v14, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->postalCode:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 44
    new-instance v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v25, v14

    const-string v14, "2.5.4.18"

    invoke-direct {v15, v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v14

    sput-object v14, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->postOfficeBox:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 45
    new-instance v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v26, v14

    const-string v14, "2.5.4.28"

    invoke-direct {v15, v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v14

    sput-object v14, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->preferredDeliveryMethod:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 46
    new-instance v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v27, v14

    const-string v14, "2.5.4.26"

    invoke-direct {v15, v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v14

    sput-object v14, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->registeredAddress:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 47
    new-instance v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v28, v14

    const-string v14, "2.5.4.33"

    invoke-direct {v15, v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v14

    sput-object v14, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->roleOccupant:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 48
    new-instance v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v29, v14

    const-string v14, "2.5.4.14"

    invoke-direct {v15, v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v14

    sput-object v14, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->searchGuide:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 49
    new-instance v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v30, v14

    const-string v14, "2.5.4.34"

    invoke-direct {v15, v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v14

    sput-object v14, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->seeAlso:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 50
    new-instance v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v31, v14

    const-string v14, "2.5.4.5"

    invoke-direct {v15, v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v14

    sput-object v14, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 51
    new-instance v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v32, v14

    const-string v14, "2.5.4.4"

    invoke-direct {v15, v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v14

    sput-object v14, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->sn:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 52
    new-instance v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v33, v14

    const-string v14, "2.5.4.8"

    invoke-direct {v15, v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v14

    sput-object v14, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->st:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 53
    new-instance v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v34, v14

    const-string v14, "2.5.4.9"

    invoke-direct {v15, v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v14

    sput-object v14, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->street:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 54
    new-instance v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v35, v14

    const-string v14, "2.5.4.20"

    invoke-direct {v15, v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v14

    sput-object v14, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->telephoneNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 55
    new-instance v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v36, v14

    const-string v14, "2.5.4.22"

    invoke-direct {v15, v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v14

    sput-object v14, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->teletexTerminalIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 56
    new-instance v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v37, v14

    const-string v14, "2.5.4.21"

    invoke-direct {v15, v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v14

    sput-object v14, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->telexNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 57
    new-instance v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v38, v14

    const-string v14, "2.5.4.12"

    invoke-direct {v15, v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v14

    sput-object v14, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->title:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 58
    new-instance v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v39, v14

    const-string v14, "0.9.2342.19200300.100.1.1"

    invoke-direct {v15, v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v14

    sput-object v14, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->uid:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 59
    new-instance v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v40, v14

    const-string v14, "2.5.4.50"

    invoke-direct {v15, v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v14

    sput-object v14, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->uniqueMember:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 60
    new-instance v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v41, v14

    const-string v14, "2.5.4.35"

    invoke-direct {v15, v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v14

    sput-object v14, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->userPassword:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 61
    new-instance v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v42, v14

    const-string v14, "2.5.4.24"

    invoke-direct {v15, v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v14

    sput-object v14, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->x121Address:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 62
    new-instance v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v43, v14

    const-string v14, "2.5.4.45"

    invoke-direct {v15, v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v14

    sput-object v14, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->x500UniqueIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 68
    new-instance v15, Ljava/util/Hashtable;

    invoke-direct {v15}, Ljava/util/Hashtable;-><init>()V

    sput-object v15, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    .line 73
    move-object/from16 v44, v14

    new-instance v14, Ljava/util/Hashtable;

    invoke-direct {v14}, Ljava/util/Hashtable;-><init>()V

    sput-object v14, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    .line 77
    move-object/from16 v45, v14

    const-string v14, "businessCategory"

    invoke-virtual {v15, v0, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v14, "c"

    invoke-virtual {v15, v1, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    move-object/from16 v46, v1

    const-string v1, "cn"

    invoke-virtual {v15, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    move-object/from16 v47, v1

    const-string v1, "dc"

    invoke-virtual {v15, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    move-object/from16 v48, v1

    const-string v1, "description"

    invoke-virtual {v15, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    move-object/from16 v49, v1

    const-string v1, "destinationIndicator"

    invoke-virtual {v15, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "distinguishedName"

    invoke-virtual {v15, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v1, "dnQualifier"

    invoke-virtual {v15, v7, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v1, "enhancedSearchGuide"

    invoke-virtual {v15, v8, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v1, "facsimileTelephoneNumber"

    invoke-virtual {v15, v9, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v1, "generationQualifier"

    invoke-virtual {v15, v10, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v1, "givenName"

    invoke-virtual {v15, v11, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v1, "houseIdentifier"

    invoke-virtual {v15, v12, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v1, "initials"

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    move-object/from16 v50, v1

    const-string v1, "internationalISDNNumber"

    move-object/from16 v51, v13

    move-object/from16 v13, v16

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string/jumbo v1, "l"

    move-object/from16 v13, v17

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    move-object/from16 v17, v1

    const-string/jumbo v1, "member"

    move-object/from16 v52, v13

    move-object/from16 v13, v18

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    move-object/from16 v18, v1

    const-string/jumbo v1, "name"

    move-object/from16 v53, v13

    move-object/from16 v13, v19

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    move-object/from16 v19, v1

    const-string/jumbo v1, "o"

    move-object/from16 v54, v13

    move-object/from16 v13, v20

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    move-object/from16 v20, v1

    const-string/jumbo v1, "ou"

    move-object/from16 v55, v13

    move-object/from16 v13, v21

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    move-object/from16 v21, v1

    const-string/jumbo v1, "owner"

    move-object/from16 v56, v13

    move-object/from16 v13, v22

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    move-object/from16 v22, v1

    const-string/jumbo v1, "physicalDeliveryOfficeName"

    move-object/from16 v57, v13

    move-object/from16 v13, v23

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string/jumbo v1, "postalAddress"

    move-object/from16 v13, v24

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string/jumbo v1, "postalCode"

    move-object/from16 v13, v25

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string/jumbo v1, "postOfficeBox"

    move-object/from16 v13, v26

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string/jumbo v1, "preferredDeliveryMethod"

    move-object/from16 v13, v27

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string/jumbo v1, "registeredAddress"

    move-object/from16 v13, v28

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string/jumbo v1, "roleOccupant"

    move-object/from16 v13, v29

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string/jumbo v1, "searchGuide"

    move-object/from16 v13, v30

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string/jumbo v1, "seeAlso"

    move-object/from16 v13, v31

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string/jumbo v1, "serialNumber"

    move-object/from16 v13, v32

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string/jumbo v1, "sn"

    move-object/from16 v13, v33

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    move-object/from16 v33, v1

    const-string/jumbo v1, "st"

    move-object/from16 v58, v13

    move-object/from16 v13, v34

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    move-object/from16 v34, v1

    const-string/jumbo v1, "street"

    move-object/from16 v59, v13

    move-object/from16 v13, v35

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    move-object/from16 v35, v1

    const-string/jumbo v1, "telephoneNumber"

    move-object/from16 v60, v13

    move-object/from16 v13, v36

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string/jumbo v1, "teletexTerminalIdentifier"

    move-object/from16 v13, v37

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string/jumbo v1, "telexNumber"

    move-object/from16 v13, v38

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string/jumbo v1, "title"

    move-object/from16 v13, v39

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    move-object/from16 v39, v1

    const-string/jumbo v1, "uid"

    move-object/from16 v61, v13

    move-object/from16 v13, v40

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    move-object/from16 v40, v1

    const-string/jumbo v1, "uniqueMember"

    move-object/from16 v62, v13

    move-object/from16 v13, v41

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string/jumbo v1, "userPassword"

    move-object/from16 v13, v42

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string/jumbo v1, "x121Address"

    move-object/from16 v13, v43

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string/jumbo v1, "x500UniqueIdentifier"

    move-object/from16 v13, v44

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v1, "businesscategory"

    move-object/from16 v15, v45

    invoke-virtual {v15, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    move-object/from16 v0, v46

    invoke-virtual {v15, v14, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    move-object/from16 v0, v47

    invoke-virtual {v15, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    move-object/from16 v0, v48

    invoke-virtual {v15, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    move-object/from16 v0, v49

    invoke-virtual {v15, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v0, "destinationindicator"

    invoke-virtual {v15, v0, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v0, "distinguishedname"

    invoke-virtual {v15, v0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v0, "dnqualifier"

    invoke-virtual {v15, v0, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v0, "enhancedsearchguide"

    invoke-virtual {v15, v0, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v0, "facsimiletelephonenumber"

    invoke-virtual {v15, v0, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v0, "generationqualifier"

    invoke-virtual {v15, v0, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v0, "givenname"

    invoke-virtual {v15, v0, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v0, "houseidentifier"

    invoke-virtual {v15, v0, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    move-object/from16 v1, v50

    move-object/from16 v0, v51

    invoke-virtual {v15, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v0, "internationalisdnnumber"

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    move-object/from16 v1, v17

    move-object/from16 v0, v52

    invoke-virtual {v15, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    move-object/from16 v1, v18

    move-object/from16 v0, v53

    invoke-virtual {v15, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    move-object/from16 v1, v19

    move-object/from16 v0, v54

    invoke-virtual {v15, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    move-object/from16 v1, v20

    move-object/from16 v0, v55

    invoke-virtual {v15, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    move-object/from16 v1, v21

    move-object/from16 v0, v56

    invoke-virtual {v15, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    move-object/from16 v1, v22

    move-object/from16 v0, v57

    invoke-virtual {v15, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string/jumbo v0, "physicaldeliveryofficename"

    move-object/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string/jumbo v0, "postaladdress"

    move-object/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string/jumbo v0, "postalcode"

    move-object/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string/jumbo v0, "postofficebox"

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string/jumbo v0, "preferreddeliverymethod"

    move-object/from16 v1, v27

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string/jumbo v0, "registeredaddress"

    move-object/from16 v1, v28

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string/jumbo v0, "roleoccupant"

    move-object/from16 v1, v29

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string/jumbo v0, "searchguide"

    move-object/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string/jumbo v0, "seealso"

    move-object/from16 v1, v31

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string/jumbo v0, "serialnumber"

    move-object/from16 v1, v32

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    move-object/from16 v1, v33

    move-object/from16 v0, v58

    invoke-virtual {v15, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    move-object/from16 v1, v34

    move-object/from16 v0, v59

    invoke-virtual {v15, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    move-object/from16 v1, v35

    move-object/from16 v0, v60

    invoke-virtual {v15, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string/jumbo v0, "telephonenumber"

    move-object/from16 v1, v36

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string/jumbo v0, "teletexterminalidentifier"

    move-object/from16 v1, v37

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string/jumbo v0, "telexnumber"

    move-object/from16 v1, v38

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    move-object/from16 v1, v39

    move-object/from16 v0, v61

    invoke-virtual {v15, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    move-object/from16 v1, v40

    move-object/from16 v0, v62

    invoke-virtual {v15, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string/jumbo v0, "uniquemember"

    move-object/from16 v1, v41

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string/jumbo v0, "userpassword"

    move-object/from16 v1, v42

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string/jumbo v0, "x121address"

    move-object/from16 v1, v43

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string/jumbo v0, "x500uniqueidentifier"

    invoke-virtual {v15, v0, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    return-void
.end method

.method protected constructor blacklist <init>()V
    .locals 1

    .line 177
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;-><init>()V

    .line 178
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->copyHashTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->defaultSymbols:Ljava/util/Hashtable;

    .line 179
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->copyHashTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->defaultLookUp:Ljava/util/Hashtable;

    .line 180
    return-void
.end method


# virtual methods
.method public blacklist attrNameToOID(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1
    .param p1, "attrName"    # Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->defaultLookUp:Ljava/util/Hashtable;

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->decodeAttrName(Ljava/lang/String;Ljava/util/Hashtable;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist encodeStringValue(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "value"    # Ljava/lang/String;

    .line 184
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->dc:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;

    invoke-direct {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 188
    :cond_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->c:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->dnQualifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->telephoneNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 189
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 194
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->encodeStringValue(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0

    .line 191
    :cond_2
    :goto_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERPrintableString;

    invoke-direct {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist fromString(Ljava/lang/String;)[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    .locals 5
    .param p1, "dirName"    # Ljava/lang/String;

    .line 215
    invoke-static {p1, p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->rDNsFromString(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;)[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    move-result-object v0

    .line 216
    .local v0, "tmp":[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    array-length v1, v0

    new-array v1, v1, [Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    .line 218
    .local v1, "res":[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-eq v2, v3, :cond_0

    .line 220
    array-length v3, v1

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v4, v0, v2

    aput-object v4, v1, v3

    .line 218
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 223
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public blacklist oidToAttrNames(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)[Ljava/lang/String;
    .locals 1
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 204
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->defaultLookUp:Ljava/util/Hashtable;

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->findAttrNamesForOID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Hashtable;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist oidToDisplayName(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .locals 1
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 199
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist toString(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)Ljava/lang/String;
    .locals 6
    .param p1, "name"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 229
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 230
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .line 232
    .local v1, "first":Z
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    move-result-object v2

    .line 234
    .local v2, "rdns":[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 236
    if-eqz v1, :cond_0

    .line 238
    const/4 v1, 0x0

    goto :goto_1

    .line 242
    :cond_0
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 245
    :goto_1
    aget-object v4, v2, v3

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->defaultSymbols:Ljava/util/Hashtable;

    invoke-static {v0, v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->appendRDN(Ljava/lang/StringBuffer;Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;Ljava/util/Hashtable;)V

    .line 234
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 248
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
