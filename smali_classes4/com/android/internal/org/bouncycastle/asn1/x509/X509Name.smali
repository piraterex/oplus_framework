.class public Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "X509Name.java"


# static fields
.field public static final blacklist BUSINESS_CATEGORY:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist C:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist CN:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist COUNTRY_OF_CITIZENSHIP:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist COUNTRY_OF_RESIDENCE:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist DATE_OF_BIRTH:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist DC:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist DMD_NAME:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist DN_QUALIFIER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist DefaultLookUp:Ljava/util/Hashtable;

.field public static blacklist DefaultReverse:Z

.field public static final blacklist DefaultSymbols:Ljava/util/Hashtable;

.field public static final blacklist E:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist EmailAddress:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private static final blacklist FALSE:Ljava/lang/Boolean;

.field public static final blacklist GENDER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist GENERATION:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist GIVENNAME:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist INITIALS:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist L:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist NAME:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist NAME_AT_BIRTH:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist O:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist OIDLookUp:Ljava/util/Hashtable;

.field public static final blacklist OU:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist PLACE_OF_BIRTH:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist POSTAL_ADDRESS:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist POSTAL_CODE:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist PSEUDONYM:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist RFC1779Symbols:Ljava/util/Hashtable;

.field public static final blacklist RFC2253Symbols:Ljava/util/Hashtable;

.field public static final blacklist SERIALNUMBER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist SN:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist ST:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist STREET:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist SURNAME:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist SymbolLookUp:Ljava/util/Hashtable;

.field public static final blacklist T:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist TELEPHONE_NUMBER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private static final blacklist TRUE:Ljava/lang/Boolean;

.field public static final blacklist UID:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist UNIQUE_IDENTIFIER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist UnstructuredAddress:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist UnstructuredName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field private blacklist added:Ljava/util/Vector;

.field private blacklist converter:Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameEntryConverter;

.field private blacklist hashCodeValue:I

.field private blacklist isHashCodeCalculated:Z

.field private blacklist ordering:Ljava/util/Vector;

.field private blacklist seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

.field private blacklist values:Ljava/util/Vector;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 47

    .line 47
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.6"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->C:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 53
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "2.5.4.10"

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->O:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 59
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "2.5.4.11"

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->OU:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 65
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "2.5.4.12"

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->T:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 71
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "2.5.4.3"

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->CN:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 76
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v6, "2.5.4.5"

    invoke-direct {v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v5, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->SN:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 81
    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "2.5.4.9"

    invoke-direct {v6, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v6, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->STREET:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 86
    sput-object v5, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->SERIALNUMBER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 91
    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v8, "2.5.4.7"

    invoke-direct {v7, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v7, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->L:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 96
    new-instance v8, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v9, "2.5.4.8"

    invoke-direct {v8, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v8, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->ST:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 101
    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v10, "2.5.4.4"

    invoke-direct {v9, v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v9, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->SURNAME:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 102
    new-instance v10, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v11, "2.5.4.42"

    invoke-direct {v10, v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v10, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->GIVENNAME:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 103
    new-instance v11, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v12, "2.5.4.43"

    invoke-direct {v11, v12}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v11, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->INITIALS:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 104
    new-instance v12, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v13, "2.5.4.44"

    invoke-direct {v12, v13}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v12, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->GENERATION:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 105
    new-instance v13, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v14, "2.5.4.45"

    invoke-direct {v13, v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v13, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->UNIQUE_IDENTIFIER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 110
    new-instance v14, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "2.5.4.15"

    invoke-direct {v14, v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v14, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->BUSINESS_CATEGORY:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 116
    new-instance v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v16, v14

    const-string v14, "2.5.4.17"

    invoke-direct {v15, v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v15, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->POSTAL_CODE:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 122
    new-instance v14, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v17, v15

    const-string v15, "2.5.4.46"

    invoke-direct {v14, v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v14, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->DN_QUALIFIER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 128
    new-instance v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v18, v14

    const-string v14, "2.5.4.65"

    invoke-direct {v15, v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v15, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->PSEUDONYM:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 135
    new-instance v14, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v19, v15

    const-string v15, "1.3.6.1.5.5.7.9.1"

    invoke-direct {v14, v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v14, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->DATE_OF_BIRTH:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 141
    new-instance v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v20, v14

    const-string v14, "1.3.6.1.5.5.7.9.2"

    invoke-direct {v15, v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v15, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->PLACE_OF_BIRTH:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 147
    new-instance v14, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v21, v15

    const-string v15, "1.3.6.1.5.5.7.9.3"

    invoke-direct {v14, v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v14, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->GENDER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 154
    new-instance v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v22, v14

    const-string v14, "1.3.6.1.5.5.7.9.4"

    invoke-direct {v15, v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v15, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->COUNTRY_OF_CITIZENSHIP:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 161
    new-instance v14, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v23, v15

    const-string v15, "1.3.6.1.5.5.7.9.5"

    invoke-direct {v14, v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v14, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->COUNTRY_OF_RESIDENCE:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 168
    new-instance v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v24, v14

    const-string v14, "1.3.36.8.3.14"

    invoke-direct {v15, v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v15, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->NAME_AT_BIRTH:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 174
    new-instance v14, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v25, v15

    const-string v15, "2.5.4.16"

    invoke-direct {v14, v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v14, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->POSTAL_ADDRESS:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 179
    new-instance v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v26, v14

    const-string v14, "2.5.4.54"

    invoke-direct {v15, v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v15, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->DMD_NAME:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 184
    sget-object v14, Lcom/android/internal/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_at_telephoneNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v14, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->TELEPHONE_NUMBER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 189
    sget-object v15, Lcom/android/internal/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_at_name:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v15, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->NAME:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 196
    move-object/from16 v27, v15

    sget-object v15, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_emailAddress:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v15, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->EmailAddress:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 201
    move-object/from16 v28, v14

    sget-object v14, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_unstructuredName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v14, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->UnstructuredName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 202
    move-object/from16 v29, v13

    sget-object v13, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_unstructuredAddress:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v13, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->UnstructuredAddress:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 207
    sput-object v15, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->E:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 212
    move-object/from16 v30, v14

    new-instance v14, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v31, v13

    const-string v13, "0.9.2342.19200300.100.1.25"

    invoke-direct {v14, v13}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v14, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->DC:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 217
    new-instance v13, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v32, v12

    const-string v12, "0.9.2342.19200300.100.1.1"

    invoke-direct {v13, v12}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v13, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->UID:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 223
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->DefaultReverse:Z

    .line 229
    new-instance v12, Ljava/util/Hashtable;

    invoke-direct {v12}, Ljava/util/Hashtable;-><init>()V

    sput-object v12, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    .line 235
    move-object/from16 v33, v11

    new-instance v11, Ljava/util/Hashtable;

    invoke-direct {v11}, Ljava/util/Hashtable;-><init>()V

    sput-object v11, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    .line 241
    move-object/from16 v34, v11

    new-instance v11, Ljava/util/Hashtable;

    invoke-direct {v11}, Ljava/util/Hashtable;-><init>()V

    sput-object v11, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    .line 246
    move-object/from16 v35, v11

    new-instance v11, Ljava/util/Hashtable;

    invoke-direct {v11}, Ljava/util/Hashtable;-><init>()V

    sput-object v11, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    .line 252
    sput-object v12, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->OIDLookUp:Ljava/util/Hashtable;

    .line 258
    sput-object v11, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->SymbolLookUp:Ljava/util/Hashtable;

    .line 261
    sget-object v36, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v36, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->TRUE:Ljava/lang/Boolean;

    .line 262
    sget-object v36, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v36, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->FALSE:Ljava/lang/Boolean;

    .line 267
    move-object/from16 v36, v11

    const-string v11, "C"

    invoke-virtual {v12, v0, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    move-object/from16 v37, v0

    const-string v0, "O"

    invoke-virtual {v12, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    move-object/from16 v38, v0

    const-string v0, "T"

    invoke-virtual {v12, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string v0, "OU"

    invoke-virtual {v12, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    move-object/from16 v39, v3

    const-string v3, "CN"

    invoke-virtual {v12, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    move-object/from16 v40, v3

    const-string v3, "L"

    invoke-virtual {v12, v7, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    move-object/from16 v41, v3

    const-string v3, "ST"

    invoke-virtual {v12, v8, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    move-object/from16 v42, v3

    const-string v3, "SERIALNUMBER"

    invoke-virtual {v12, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string v3, "E"

    invoke-virtual {v12, v15, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v3, "DC"

    invoke-virtual {v12, v14, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    move-object/from16 v43, v15

    const-string v15, "UID"

    invoke-virtual {v12, v13, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    move-object/from16 v44, v5

    const-string v5, "STREET"

    invoke-virtual {v12, v6, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    move-object/from16 v45, v13

    const-string v13, "SURNAME"

    invoke-virtual {v12, v9, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string v13, "GIVENNAME"

    invoke-virtual {v12, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v13, "INITIALS"

    move-object/from16 v46, v10

    move-object/from16 v10, v33

    invoke-virtual {v12, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string v13, "GENERATION"

    move-object/from16 v10, v32

    invoke-virtual {v12, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string/jumbo v13, "unstructuredAddress"

    move-object/from16 v10, v31

    invoke-virtual {v12, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string/jumbo v13, "unstructuredName"

    move-object/from16 v10, v30

    invoke-virtual {v12, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v13, "UniqueIdentifier"

    move-object/from16 v10, v29

    invoke-virtual {v12, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v13, "DN"

    move-object/from16 v10, v18

    invoke-virtual {v12, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v13, "Pseudonym"

    move-object/from16 v10, v19

    invoke-virtual {v12, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v13, "PostalAddress"

    move-object/from16 v10, v26

    invoke-virtual {v12, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v13, "NameAtBirth"

    move-object/from16 v10, v25

    invoke-virtual {v12, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v13, "CountryOfCitizenship"

    move-object/from16 v10, v23

    invoke-virtual {v12, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v13, "CountryOfResidence"

    move-object/from16 v10, v24

    invoke-virtual {v12, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v13, "Gender"

    move-object/from16 v10, v22

    invoke-virtual {v12, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v13, "PlaceOfBirth"

    move-object/from16 v10, v21

    invoke-virtual {v12, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v13, "DateOfBirth"

    move-object/from16 v10, v20

    invoke-virtual {v12, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v13, "PostalCode"

    move-object/from16 v10, v17

    invoke-virtual {v12, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v13, "BusinessCategory"

    move-object/from16 v10, v16

    invoke-virtual {v12, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v13, "TelephoneNumber"

    move-object/from16 v10, v28

    invoke-virtual {v12, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string v13, "Name"

    move-object/from16 v10, v27

    invoke-virtual {v12, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    move-object/from16 v13, v34

    move-object/from16 v12, v37

    invoke-virtual {v13, v12, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    move-object/from16 v10, v38

    invoke-virtual {v13, v1, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-virtual {v13, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    move-object/from16 v34, v9

    move-object/from16 v9, v40

    invoke-virtual {v13, v4, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    move-object/from16 v37, v4

    move-object/from16 v4, v41

    invoke-virtual {v13, v7, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    move-object/from16 v4, v42

    invoke-virtual {v13, v8, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    invoke-virtual {v13, v6, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    invoke-virtual {v13, v14, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    move-object/from16 v3, v45

    invoke-virtual {v13, v3, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    move-object/from16 v13, v35

    invoke-virtual {v13, v12, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-virtual {v13, v1, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    invoke-virtual {v13, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    move-object/from16 v0, v37

    invoke-virtual {v13, v0, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    move-object/from16 v9, v41

    invoke-virtual {v13, v7, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    invoke-virtual {v13, v8, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-virtual {v13, v6, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string v4, "c"

    move-object/from16 v5, v36

    invoke-virtual {v5, v4, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string/jumbo v4, "o"

    invoke-virtual {v5, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string/jumbo v1, "t"

    move-object/from16 v4, v39

    invoke-virtual {v5, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string/jumbo v1, "ou"

    invoke-virtual {v5, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string v1, "cn"

    invoke-virtual {v5, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string/jumbo v0, "l"

    invoke-virtual {v5, v0, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string/jumbo v0, "st"

    invoke-virtual {v5, v0, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string/jumbo v0, "sn"

    move-object/from16 v1, v44

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string/jumbo v0, "serialnumber"

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string/jumbo v0, "street"

    invoke-virtual {v5, v0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string v0, "emailaddress"

    move-object/from16 v1, v43

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string v0, "dc"

    invoke-virtual {v5, v0, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string v0, "e"

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string/jumbo v0, "uid"

    invoke-virtual {v5, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string/jumbo v0, "surname"

    move-object/from16 v1, v34

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v0, "givenname"

    move-object/from16 v1, v46

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string v0, "initials"

    move-object/from16 v1, v33

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const-string v0, "generation"

    move-object/from16 v1, v32

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string/jumbo v0, "unstructuredaddress"

    move-object/from16 v1, v31

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const-string/jumbo v0, "unstructuredname"

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const-string/jumbo v0, "uniqueidentifier"

    move-object/from16 v1, v29

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string v0, "dn"

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string/jumbo v0, "pseudonym"

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string/jumbo v0, "postaladdress"

    move-object/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string/jumbo v0, "nameofbirth"

    move-object/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v0, "countryofcitizenship"

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string v0, "countryofresidence"

    move-object/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string v0, "gender"

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string/jumbo v0, "placeofbirth"

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v0, "dateofbirth"

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string/jumbo v0, "postalcode"

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string v0, "businesscategory"

    move-object/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-string/jumbo v0, "telephonenumber"

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-string/jumbo v0, "name"

    move-object/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    return-void
.end method

.method protected constructor blacklist <init>()V
    .locals 1

    .line 398
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    .line 355
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    .line 356
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    .line 357
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    .line 400
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 9
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 409
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    .line 355
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    .line 356
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    .line 357
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    .line 410
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 412
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 414
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 416
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    .line 418
    .local v1, "set":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 420
    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    .line 422
    .local v3, "s":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 427
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 429
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    .line 430
    .local v4, "value":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    instance-of v6, v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    if-eqz v6, :cond_1

    instance-of v6, v4, Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;

    if-nez v6, :cond_1

    .line 432
    move-object v6, v4

    check-cast v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    invoke-interface {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v6

    .line 433
    .local v6, "v":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x23

    if-ne v5, v7, :cond_0

    .line 435
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\\"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    .line 439
    :cond_0
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 441
    .end local v6    # "v":Ljava/lang/String;
    :goto_2
    goto :goto_3

    .line 446
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    const-string v8, "DER"

    invoke-virtual {v7, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->bytesToString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    nop

    .line 453
    :goto_3
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    if-eqz v2, :cond_2

    sget-object v6, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->TRUE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_2
    sget-object v6, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->FALSE:Ljava/lang/Boolean;

    :goto_4
    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 418
    .end local v3    # "s":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v4    # "value":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 448
    .restart local v3    # "s":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v4    # "value":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :catch_0
    move-exception v5

    .line 450
    .local v5, "e1":Ljava/io/IOException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "cannot encode value"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 424
    .end local v4    # "value":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .end local v5    # "e1":Ljava/io/IOException;
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "badly sized pair"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 455
    .end local v1    # "set":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .end local v2    # "i":I
    .end local v3    # "s":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :cond_4
    goto/16 :goto_0

    .line 456
    :cond_5
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "dirName"    # Ljava/lang/String;

    .line 598
    sget-boolean v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->DefaultReverse:Z

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;)V

    .line 599
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V
    .locals 2
    .param p1, "dirName"    # Ljava/lang/String;
    .param p2, "converter"    # Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    .line 612
    sget-boolean v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->DefaultReverse:Z

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V

    .line 613
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Hashtable;)V
    .locals 1
    .param p1, "attributes"    # Ljava/util/Hashtable;

    .line 473
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    .line 474
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Vector;Ljava/util/Hashtable;)V
    .locals 1
    .param p1, "ordering"    # Ljava/util/Vector;
    .param p2, "attributes"    # Ljava/util/Hashtable;

    .line 488
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509DefaultEntryConverter;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509DefaultEntryConverter;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V

    .line 489
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Vector;Ljava/util/Hashtable;Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V
    .locals 5
    .param p1, "ordering"    # Ljava/util/Vector;
    .param p2, "attributes"    # Ljava/util/Hashtable;
    .param p3, "converter"    # Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    .line 507
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    .line 355
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    .line 356
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    .line 357
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    .line 508
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    .line 510
    if-eqz p1, :cond_1

    .line 512
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 514
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 515
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 512
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    goto :goto_2

    .line 520
    :cond_1
    invoke-virtual {p2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 522
    .local v0, "e":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 524
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 525
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 529
    .end local v0    # "e":Ljava/util/Enumeration;
    :cond_2
    :goto_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 531
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 533
    .local v1, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {p2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 538
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {p2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 529
    .end local v1    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 535
    .restart local v1    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No attribute for object id - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - passed to distinguished name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 540
    .end local v0    # "i":I
    .end local v1    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_4
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 1
    .param p1, "oids"    # Ljava/util/Vector;
    .param p2, "values"    # Ljava/util/Vector;

    .line 550
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509DefaultEntryConverter;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509DefaultEntryConverter;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/util/Vector;Ljava/util/Vector;Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V

    .line 551
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Vector;Ljava/util/Vector;Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V
    .locals 3
    .param p1, "oids"    # Ljava/util/Vector;
    .param p2, "values"    # Ljava/util/Vector;
    .param p3, "converter"    # Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    .line 564
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    .line 355
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    .line 356
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    .line 357
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    .line 565
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    .line 567
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 572
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 574
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 575
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {p2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 576
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 572
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 578
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 569
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "oids vector must be same length as values."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(ZLjava/lang/String;)V
    .locals 1
    .param p1, "reverse"    # Z
    .param p2, "dirName"    # Ljava/lang/String;

    .line 626
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;)V

    .line 627
    return-void
.end method

.method public constructor blacklist <init>(ZLjava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V
    .locals 1
    .param p1, "reverse"    # Z
    .param p2, "dirName"    # Ljava/lang/String;
    .param p3, "converter"    # Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    .line 642
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V

    .line 643
    return-void
.end method

.method public constructor blacklist <init>(ZLjava/util/Hashtable;Ljava/lang/String;)V
    .locals 1
    .param p1, "reverse"    # Z
    .param p2, "lookUp"    # Ljava/util/Hashtable;
    .param p3, "dirName"    # Ljava/lang/String;

    .line 664
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509DefaultEntryConverter;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509DefaultEntryConverter;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V

    .line 665
    return-void
.end method

.method public constructor blacklist <init>(ZLjava/util/Hashtable;Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V
    .locals 8
    .param p1, "reverse"    # Z
    .param p2, "lookUp"    # Ljava/util/Hashtable;
    .param p3, "dirName"    # Ljava/lang/String;
    .param p4, "converter"    # Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    .line 783
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    .line 355
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    .line 356
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    .line 357
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    .line 784
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    .line 785
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;

    invoke-direct {v0, p3}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;-><init>(Ljava/lang/String;)V

    .line 787
    .local v0, "nTok":Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 789
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 791
    .local v1, "token":Ljava/lang/String;
    const/16 v2, 0x2b

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_1

    .line 793
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;

    invoke-direct {v3, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;-><init>(Ljava/lang/String;C)V

    move-object v2, v3

    .line 795
    .local v2, "pTok":Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->addEntry(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 797
    :goto_1
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 799
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->addEntry(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 801
    .end local v2    # "pTok":Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;
    :cond_0
    goto :goto_2

    .line 804
    :cond_1
    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p2, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->addEntry(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 806
    .end local v1    # "token":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 808
    :cond_2
    if-eqz p1, :cond_5

    .line 810
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 811
    .local v1, "o":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 812
    .local v2, "v":Ljava/util/Vector;
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 814
    .local v3, "a":Ljava/util/Vector;
    const/4 v4, 0x1

    .line 816
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 818
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 820
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6, v4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 821
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6, v4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 822
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6, v4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 823
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 827
    :cond_3
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 828
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 829
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6, v7}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 830
    const/4 v4, 0x1

    .line 816
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 834
    .end local v5    # "i":I
    :cond_4
    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    .line 835
    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    .line 836
    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    .line 838
    .end local v1    # "o":Ljava/util/Vector;
    .end local v2    # "v":Ljava/util/Vector;
    .end local v3    # "a":Ljava/util/Vector;
    .end local v4    # "count":I
    :cond_5
    return-void
.end method

.method private blacklist addEntry(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 6
    .param p1, "lookUp"    # Ljava/util/Hashtable;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "isAdded"    # Ljava/lang/Boolean;

    .line 845
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;

    const/16 v1, 0x3d

    invoke-direct {v0, p2, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 847
    .local v0, "vTok":Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 849
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 854
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 856
    .local v2, "value":Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->decodeOID(Ljava/lang/String;Ljava/util/Hashtable;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    .line 858
    .local v3, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 859
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-direct {p0, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 860
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    invoke-virtual {v4, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 861
    return-void

    .line 851
    .end local v2    # "value":Ljava/lang/String;
    .end local v3    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "badly formatted directory string"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist appendValue(Ljava/lang/StringBuffer;Ljava/util/Hashtable;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V
    .locals 7
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "oidSymbols"    # Ljava/util/Hashtable;
    .param p3, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p4, "value"    # Ljava/lang/String;

    .line 1232
    invoke-virtual {p2, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1234
    .local v0, "sym":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1236
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1240
    :cond_0
    invoke-virtual {p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1243
    :goto_0
    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1245
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 1246
    .local v1, "start":I
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1247
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    .line 1249
    .local v2, "end":I
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x5c

    const/4 v5, 0x2

    if-lt v3, v5, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    invoke-virtual {p4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x23

    if-ne v3, v5, :cond_1

    .line 1251
    add-int/lit8 v1, v1, 0x2

    .line 1254
    :cond_1
    :goto_1
    const-string v3, "\\"

    const/16 v5, 0x20

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_2

    .line 1256
    invoke-virtual {p1, v1, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 1257
    add-int/lit8 v1, v1, 0x2

    .line 1258
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1261
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, -0x1

    if-le v2, v1, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_3

    .line 1263
    invoke-virtual {p1, v2, v4}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1266
    :cond_3
    :goto_3
    if-gt v1, v2, :cond_4

    .line 1268
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 1283
    add-int/lit8 v1, v1, 0x1

    .line 1284
    goto :goto_3

    .line 1278
    :sswitch_0
    invoke-virtual {p1, v1, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 1279
    add-int/lit8 v1, v1, 0x2

    .line 1280
    add-int/lit8 v2, v2, 0x1

    .line 1281
    goto :goto_3

    .line 1287
    :cond_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist bytesToString([B)Ljava/lang/String;
    .locals 3
    .param p1, "data"    # [B

    .line 1369
    array-length v0, p1

    new-array v0, v0, [C

    .line 1371
    .local v0, "cs":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 1373
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 1371
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1376
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method private blacklist canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 1174
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1176
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_0

    .line 1178
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->decodeObject(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 1180
    .local v1, "obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v2, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    if-eqz v2, :cond_0

    .line 1182
    move-object v2, v1

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1186
    .end local v1    # "obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :cond_0
    return-object v0
.end method

.method private blacklist decodeOID(Ljava/lang/String;Ljava/util/Hashtable;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "lookUp"    # Ljava/util/Hashtable;

    .line 671
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 672
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OID."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 676
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x39

    if-gt v0, v1, :cond_1

    .line 678
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 681
    :cond_1
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 682
    .local v0, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-eqz v0, :cond_2

    .line 687
    return-object v0

    .line 684
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown object id - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - passed to distinguished name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist decodeObject(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4
    .param p1, "oValue"    # Ljava/lang/String;

    .line 1193
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v1, v0}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1195
    :catch_0
    move-exception v0

    .line 1197
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown encoding in name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist equivalentStrings(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .line 1155
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1156
    .local v0, "value":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1158
    .local v1, "oValue":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1160
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1161
    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1163
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1165
    const/4 v2, 0x0

    return v2

    .line 1169
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;
    .locals 1
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 375
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 381
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;

    if-eqz v0, :cond_0

    .line 383
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;

    return-object v0

    .line 385
    :cond_0
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_1

    .line 387
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;

    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 389
    :cond_1
    if-eqz p0, :cond_2

    .line 391
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 394
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .line 1204
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1206
    .local v0, "res":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1208
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1210
    .local v1, "c1":C
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1212
    const/4 v2, 0x1

    .local v2, "k":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1214
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1215
    .local v3, "c2":C
    const/16 v4, 0x20

    if-ne v1, v4, :cond_0

    if-eq v3, v4, :cond_1

    .line 1217
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1219
    :cond_1
    move v1, v3

    .line 1212
    .end local v3    # "c2":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1223
    .end local v1    # "c1":C
    .end local v2    # "k":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "elt"    # Ljava/lang/String;

    .line 692
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x5c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x22

    if-gez v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    goto/16 :goto_5

    .line 697
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 698
    .local v1, "elts":[C
    const/4 v3, 0x0

    .line 699
    .local v3, "escaped":Z
    const/4 v4, 0x0

    .line 700
    .local v4, "quoted":Z
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 701
    .local v5, "buf":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .line 705
    .local v6, "start":I
    const/4 v7, 0x0

    aget-char v8, v1, v7

    const/4 v9, 0x1

    if-ne v8, v0, :cond_1

    .line 707
    aget-char v8, v1, v9

    const/16 v10, 0x23

    if-ne v8, v10, :cond_1

    .line 709
    const/4 v6, 0x2

    .line 710
    const-string v8, "\\#"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 714
    :cond_1
    const/4 v8, 0x0

    .line 715
    .local v8, "nonWhiteSpaceEncountered":Z
    const/4 v10, 0x0

    .line 717
    .local v10, "lastEscaped":I
    move v11, v6

    .local v11, "i":I
    :goto_0
    array-length v12, v1

    const/16 v13, 0x20

    if-eq v11, v12, :cond_8

    .line 719
    aget-char v12, v1, v11

    .line 721
    .local v12, "c":C
    if-eq v12, v13, :cond_2

    .line 723
    const/4 v8, 0x1

    .line 726
    :cond_2
    if-ne v12, v2, :cond_5

    .line 728
    if-nez v3, :cond_4

    .line 730
    if-nez v4, :cond_3

    move v13, v9

    goto :goto_1

    :cond_3
    move v13, v7

    :goto_1
    move v4, v13

    goto :goto_2

    .line 734
    :cond_4
    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 736
    :goto_2
    const/4 v3, 0x0

    goto :goto_3

    .line 738
    :cond_5
    if-ne v12, v0, :cond_6

    if-nez v3, :cond_6

    if-nez v4, :cond_6

    .line 740
    const/4 v3, 0x1

    .line 741
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    goto :goto_3

    .line 745
    :cond_6
    if-ne v12, v13, :cond_7

    if-nez v3, :cond_7

    if-nez v8, :cond_7

    .line 747
    goto :goto_3

    .line 749
    :cond_7
    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 750
    const/4 v3, 0x0

    .line 717
    .end local v12    # "c":C
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 754
    .end local v11    # "i":I
    :cond_8
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 756
    :goto_4
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sub-int/2addr v0, v9

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v13, :cond_9

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sub-int/2addr v0, v9

    if-eq v10, v0, :cond_9

    .line 758
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sub-int/2addr v0, v9

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_4

    .line 762
    :cond_9
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 694
    .end local v1    # "elts":[C
    .end local v3    # "escaped":Z
    .end local v4    # "quoted":Z
    .end local v5    # "buf":Ljava/lang/StringBuffer;
    .end local v6    # "start":I
    .end local v8    # "nonWhiteSpaceEncountered":Z
    .end local v10    # "lastEscaped":I
    :cond_a
    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 19
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1065
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v0, 0x1

    if-ne v2, v1, :cond_0

    .line 1067
    return v0

    .line 1070
    :cond_0
    instance-of v3, v2, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    instance-of v3, v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-nez v3, :cond_1

    .line 1072
    return v4

    .line 1075
    :cond_1
    move-object v3, v2

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 1077
    .local v3, "derO":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1079
    return v0

    .line 1086
    :cond_2
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1091
    .local v5, "other":Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;
    nop

    .line 1093
    iget-object v6, v1, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    .line 1095
    .local v6, "orderingSize":I
    iget-object v7, v5, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-eq v6, v7, :cond_3

    .line 1097
    return v4

    .line 1100
    :cond_3
    new-array v7, v6, [Z

    .line 1103
    .local v7, "indexes":[Z
    iget-object v8, v1, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v8, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    iget-object v9, v5, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v9, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1105
    const/4 v8, 0x0

    .line 1106
    .local v8, "start":I
    move v9, v6

    .line 1107
    .local v9, "end":I
    const/4 v10, 0x1

    .local v10, "delta":I
    goto :goto_0

    .line 1111
    .end local v8    # "start":I
    .end local v9    # "end":I
    .end local v10    # "delta":I
    :cond_4
    add-int/lit8 v8, v6, -0x1

    .line 1112
    .restart local v8    # "start":I
    const/4 v9, -0x1

    .line 1113
    .restart local v9    # "end":I
    const/4 v10, -0x1

    .line 1116
    .restart local v10    # "delta":I
    :goto_0
    move v11, v8

    .local v11, "i":I
    :goto_1
    if-eq v11, v9, :cond_9

    .line 1118
    const/4 v12, 0x0

    .line 1119
    .local v12, "found":Z
    iget-object v13, v1, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v13, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1120
    .local v13, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    iget-object v14, v1, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v14, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1122
    .local v14, "value":Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_2
    if-ge v15, v6, :cond_7

    .line 1124
    aget-boolean v16, v7, v15

    if-eqz v16, :cond_5

    .line 1126
    goto :goto_3

    .line 1129
    :cond_5
    iget-object v4, v5, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v4, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1131
    .local v4, "oOid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v13, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1133
    iget-object v0, v5, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v0, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1135
    .local v0, "oValue":Ljava/lang/String;
    invoke-direct {v1, v14, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->equivalentStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1137
    const/16 v17, 0x1

    aput-boolean v17, v7, v15

    .line 1138
    const/4 v12, 0x1

    .line 1139
    goto :goto_4

    .line 1122
    .end local v0    # "oValue":Ljava/lang/String;
    .end local v4    # "oOid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_6
    :goto_3
    add-int/lit8 v15, v15, 0x1

    const/4 v0, 0x1

    const/4 v4, 0x0

    goto :goto_2

    .line 1144
    .end local v15    # "j":I
    :cond_7
    :goto_4
    if-nez v12, :cond_8

    .line 1146
    const/4 v4, 0x0

    return v4

    .line 1116
    .end local v12    # "found":Z
    .end local v13    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v14    # "value":Ljava/lang/String;
    :cond_8
    add-int/2addr v11, v10

    const/4 v0, 0x1

    const/4 v4, 0x0

    goto :goto_1

    .line 1150
    .end local v11    # "i":I
    :cond_9
    const/4 v0, 0x1

    return v0

    .line 1088
    .end local v5    # "other":Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;
    .end local v6    # "orderingSize":I
    .end local v7    # "indexes":[Z
    .end local v8    # "start":I
    .end local v9    # "end":I
    .end local v10    # "delta":I
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 1090
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x0

    return v4
.end method

.method public blacklist equals(Ljava/lang/Object;Z)Z
    .locals 11
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "inOrder"    # Z

    .line 972
    if-nez p2, :cond_0

    .line 974
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 977
    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    .line 979
    return v0

    .line 982
    :cond_1
    instance-of v1, p1, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    instance-of v1, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-nez v1, :cond_2

    .line 984
    return v2

    .line 987
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 989
    .local v1, "derO":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 991
    return v0

    .line 998
    :cond_3
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1003
    .local v3, "other":Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;
    nop

    .line 1005
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    .line 1007
    .local v4, "orderingSize":I
    iget-object v5, v3, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-eq v4, v5, :cond_4

    .line 1009
    return v2

    .line 1012
    :cond_4
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_7

    .line 1014
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1015
    .local v6, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    iget-object v7, v3, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v7, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1017
    .local v7, "oOid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v6, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1019
    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v8, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1020
    .local v8, "value":Ljava/lang/String;
    iget-object v9, v3, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v9, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1022
    .local v9, "oValue":Ljava/lang/String;
    invoke-direct {p0, v8, v9}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->equivalentStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1024
    return v2

    .line 1026
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "oValue":Ljava/lang/String;
    :cond_5
    nop

    .line 1012
    .end local v6    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v7    # "oOid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1029
    .restart local v6    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v7    # "oOid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_6
    return v2

    .line 1033
    .end local v5    # "i":I
    .end local v6    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v7    # "oOid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_7
    return v0

    .line 1000
    .end local v3    # "other":Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;
    .end local v4    # "orderingSize":I
    :catch_0
    move-exception v0

    .line 1002
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    return v2
.end method

.method public blacklist getOIDs()Ljava/util/Vector;
    .locals 3

    .line 868
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 870
    .local v0, "v":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 872
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 870
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 875
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public blacklist getValues()Ljava/util/Vector;
    .locals 3

    .line 884
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 886
    .local v0, "v":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 888
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 886
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 891
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public blacklist getValues(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/util/Vector;
    .locals 6
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 901
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 903
    .local v0, "v":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 905
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 907
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 909
    .local v2, "val":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x23

    if-ne v4, v5, :cond_0

    .line 911
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 915
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 903
    .end local v2    # "val":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 920
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    .line 1038
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->isHashCodeCalculated:Z

    if-eqz v0, :cond_0

    .line 1040
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->hashCodeValue:I

    return v0

    .line 1043
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->isHashCodeCalculated:Z

    .line 1046
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1048
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1050
    .local v1, "value":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1051
    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1053
    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->hashCodeValue:I

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    xor-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->hashCodeValue:I

    .line 1054
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->hashCodeValue:I

    .line 1046
    .end local v1    # "value":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1057
    .end local v0    # "i":I
    :cond_1
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->hashCodeValue:I

    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 8

    .line 925
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_3

    .line 927
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 928
    .local v0, "vec":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 929
    .local v1, "sVec":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v2, 0x0

    .line 931
    .local v2, "lstOid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 933
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 934
    .local v4, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 936
    .local v5, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 938
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 940
    .local v6, "str":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    invoke-virtual {v7, v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameEntryConverter;->getConvertedValue(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 942
    if-eqz v2, :cond_1

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    .line 943
    invoke-virtual {v7, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    .line 949
    :cond_0
    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v7, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 951
    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v1, v7

    .line 952
    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_2

    .line 945
    :cond_1
    :goto_1
    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 955
    :goto_2
    move-object v2, v5

    .line 931
    .end local v4    # "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v5    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v6    # "str":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 958
    .end local v3    # "i":I
    :cond_2
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 960
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 963
    .end local v0    # "vec":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v1    # "sVec":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v2    # "lstOid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_3
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 1381
    sget-boolean v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->DefaultReverse:Z

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->toString(ZLjava/util/Hashtable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toString(ZLjava/util/Hashtable;)Ljava/lang/String;
    .locals 7
    .param p1, "reverse"    # Z
    .param p2, "oidSymbols"    # Ljava/util/Hashtable;

    .line 1305
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1306
    .local v0, "buf":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1307
    .local v1, "components":Ljava/util/Vector;
    const/4 v2, 0x1

    .line 1309
    .local v2, "first":Z
    const/4 v3, 0x0

    .line 1311
    .local v3, "ava":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1313
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1315
    const/16 v5, 0x2b

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1316
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    .line 1317
    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    .line 1318
    invoke-virtual {v6, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1316
    invoke-direct {p0, v3, p2, v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->appendValue(Ljava/lang/StringBuffer;Ljava/util/Hashtable;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    goto :goto_1

    .line 1322
    :cond_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v5

    .line 1323
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    .line 1324
    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    .line 1325
    invoke-virtual {v6, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1323
    invoke-direct {p0, v3, p2, v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->appendValue(Ljava/lang/StringBuffer;Ljava/util/Hashtable;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 1326
    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1311
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1330
    .end local v4    # "i":I
    :cond_1
    const/16 v4, 0x2c

    if-eqz p1, :cond_4

    .line 1332
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_2
    if-ltz v5, :cond_3

    .line 1334
    if-eqz v2, :cond_2

    .line 1336
    const/4 v2, 0x0

    goto :goto_3

    .line 1340
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1343
    :goto_3
    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1332
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .end local v5    # "i":I
    :cond_3
    goto :goto_6

    .line 1348
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 1350
    if-eqz v2, :cond_5

    .line 1352
    const/4 v2, 0x0

    goto :goto_5

    .line 1356
    :cond_5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1359
    :goto_5
    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1348
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1363
    .end local v5    # "i":I
    :cond_6
    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
