.class public Landroid/net/UrlQuerySanitizer;
.super Ljava/lang/Object;
.source "UrlQuerySanitizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;,
        Landroid/net/UrlQuerySanitizer$ValueSanitizer;,
        Landroid/net/UrlQuerySanitizer$ParameterValuePair;
    }
.end annotation


# static fields
.field private static final blacklist plusOrPercent:Ljava/util/regex/Pattern;

.field private static final greylist-max-o sAllButNulAndAngleBracketsLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

.field private static final greylist-max-o sAllButNulLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

.field private static final greylist-max-o sAllButWhitespaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

.field private static final greylist-max-o sAllIllegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

.field private static final greylist-max-o sAmpAndSpaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

.field private static final greylist-max-o sAmpLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

.field private static final greylist-max-o sSpaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

.field private static final greylist-max-o sURLLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

.field private static final greylist-max-o sUrlAndSpaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;


# instance fields
.field private greylist-max-o mAllowUnregisteredParamaters:Z

.field private final greylist-max-o mEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mEntriesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/UrlQuerySanitizer$ParameterValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPreferFirstRepeatedParameter:Z

.field private final greylist-max-o mSanitizers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/UrlQuerySanitizer$ValueSanitizer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mUnregisteredParameterValueSanitizer:Landroid/net/UrlQuerySanitizer$ValueSanitizer;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 441
    new-instance v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;-><init>(I)V

    sput-object v0, Landroid/net/UrlQuerySanitizer;->sAllIllegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    .line 445
    new-instance v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;

    const/16 v1, 0x5ff

    invoke-direct {v0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;-><init>(I)V

    sput-object v0, Landroid/net/UrlQuerySanitizer;->sAllButNulLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    .line 449
    new-instance v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;

    const/16 v1, 0x5fc

    invoke-direct {v0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;-><init>(I)V

    sput-object v0, Landroid/net/UrlQuerySanitizer;->sAllButWhitespaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    .line 453
    new-instance v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;

    const/16 v1, 0x194

    invoke-direct {v0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;-><init>(I)V

    sput-object v0, Landroid/net/UrlQuerySanitizer;->sURLLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    .line 457
    new-instance v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;

    const/16 v1, 0x195

    invoke-direct {v0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;-><init>(I)V

    sput-object v0, Landroid/net/UrlQuerySanitizer;->sUrlAndSpaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    .line 461
    new-instance v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;-><init>(I)V

    sput-object v0, Landroid/net/UrlQuerySanitizer;->sAmpLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    .line 465
    new-instance v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;

    const/16 v1, 0x81

    invoke-direct {v0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;-><init>(I)V

    sput-object v0, Landroid/net/UrlQuerySanitizer;->sAmpAndSpaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    .line 469
    new-instance v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;-><init>(I)V

    sput-object v0, Landroid/net/UrlQuerySanitizer;->sSpaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    .line 473
    new-instance v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;

    const/16 v1, 0x59f

    invoke-direct {v0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;-><init>(I)V

    sput-object v0, Landroid/net/UrlQuerySanitizer;->sAllButNulAndAngleBracketsLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    .line 843
    const-string v0, "[+%]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/UrlQuerySanitizer;->plusOrPercent:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/UrlQuerySanitizer;->mSanitizers:Ljava/util/HashMap;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntries:Ljava/util/HashMap;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntriesList:Ljava/util/ArrayList;

    .line 100
    nop

    .line 101
    invoke-static {}, Landroid/net/UrlQuerySanitizer;->getAllIllegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/UrlQuerySanitizer;->mUnregisteredParameterValueSanitizer:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    .line 566
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/UrlQuerySanitizer;->mSanitizers:Ljava/util/HashMap;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntries:Ljava/util/HashMap;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntriesList:Ljava/util/ArrayList;

    .line 100
    nop

    .line 101
    invoke-static {}, Landroid/net/UrlQuerySanitizer;->getAllIllegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/UrlQuerySanitizer;->mUnregisteredParameterValueSanitizer:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    .line 589
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/UrlQuerySanitizer;->setAllowUnregisteredParamaters(Z)V

    .line 590
    invoke-virtual {p0, p1}, Landroid/net/UrlQuerySanitizer;->parseUrl(Ljava/lang/String;)V

    .line 591
    return-void
.end method

.method public static final whitelist getAllButNulAndAngleBracketsLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    .line 552
    sget-object v0, Landroid/net/UrlQuerySanitizer;->sAllButNulAndAngleBracketsLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    return-object v0
.end method

.method public static final whitelist getAllButNulLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    .line 492
    sget-object v0, Landroid/net/UrlQuerySanitizer;->sAllButNulLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    return-object v0
.end method

.method public static final whitelist getAllButWhitespaceLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    .line 501
    sget-object v0, Landroid/net/UrlQuerySanitizer;->sAllButWhitespaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    return-object v0
.end method

.method public static final whitelist getAllIllegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    .line 483
    sget-object v0, Landroid/net/UrlQuerySanitizer;->sAllIllegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    return-object v0
.end method

.method public static final whitelist getAmpAndSpaceLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    .line 535
    sget-object v0, Landroid/net/UrlQuerySanitizer;->sAmpAndSpaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    return-object v0
.end method

.method public static final whitelist getAmpLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    .line 527
    sget-object v0, Landroid/net/UrlQuerySanitizer;->sAmpLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    return-object v0
.end method

.method public static final whitelist getSpaceLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    .line 543
    sget-object v0, Landroid/net/UrlQuerySanitizer;->sSpaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    return-object v0
.end method

.method public static final whitelist getUrlAndSpaceLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    .line 519
    sget-object v0, Landroid/net/UrlQuerySanitizer;->sUrlAndSpaceLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    return-object v0
.end method

.method public static final whitelist getUrlLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    .line 509
    sget-object v0, Landroid/net/UrlQuerySanitizer;->sURLLegal:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    return-object v0
.end method


# virtual methods
.method protected whitelist addSanitizedEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "parameter"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 794
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntriesList:Ljava/util/ArrayList;

    new-instance v1, Landroid/net/UrlQuerySanitizer$ParameterValuePair;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/UrlQuerySanitizer$ParameterValuePair;-><init>(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 796
    iget-boolean v0, p0, Landroid/net/UrlQuerySanitizer;->mPreferFirstRepeatedParameter:Z

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    return-void

    .line 801
    :cond_0
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    return-void
.end method

.method protected whitelist clear()V
    .locals 1

    .line 908
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 909
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntriesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 910
    return-void
.end method

.method protected whitelist decodeHexDigit(C)I
    .locals 1
    .param p1, "c"    # C

    .line 889
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    .line 890
    add-int/lit8 v0, p1, -0x30

    return v0

    .line 892
    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_1

    const/16 v0, 0x46

    if-gt p1, v0, :cond_1

    .line 893
    add-int/lit8 v0, p1, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 895
    :cond_1
    const/16 v0, 0x61

    if-lt p1, v0, :cond_2

    const/16 v0, 0x66

    if-gt p1, v0, :cond_2

    .line 896
    add-int/lit8 v0, p1, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 899
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getAllowUnregisteredParamaters()Z
    .locals 1

    .line 733
    iget-boolean v0, p0, Landroid/net/UrlQuerySanitizer;->mAllowUnregisteredParamaters:Z

    return v0
.end method

.method public whitelist getEffectiveValueSanitizer(Ljava/lang/String;)Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 2
    .param p1, "parameter"    # Ljava/lang/String;

    .line 824
    invoke-virtual {p0, p1}, Landroid/net/UrlQuerySanitizer;->getValueSanitizer(Ljava/lang/String;)Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    move-result-object v0

    .line 825
    .local v0, "sanitizer":Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    if-nez v0, :cond_0

    iget-boolean v1, p0, Landroid/net/UrlQuerySanitizer;->mAllowUnregisteredParamaters:Z

    if-eqz v1, :cond_0

    .line 826
    invoke-virtual {p0}, Landroid/net/UrlQuerySanitizer;->getUnregisteredParameterValueSanitizer()Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    move-result-object v0

    .line 828
    :cond_0
    return-object v0
.end method

.method public whitelist getParameterList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/UrlQuerySanitizer$ParameterValuePair;",
            ">;"
        }
    .end annotation

    .line 656
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntriesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist getParameterSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 646
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPreferFirstRepeatedParameter()Z
    .locals 1

    .line 762
    iget-boolean v0, p0, Landroid/net/UrlQuerySanitizer;->mPreferFirstRepeatedParameter:Z

    return v0
.end method

.method public whitelist getUnregisteredParameterValueSanitizer()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1

    .line 424
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mUnregisteredParameterValueSanitizer:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    return-object v0
.end method

.method public whitelist getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "parameter"    # Ljava/lang/String;

    .line 677
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getValueSanitizer(Ljava/lang/String;)Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    .locals 1
    .param p1, "parameter"    # Ljava/lang/String;

    .line 812
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mSanitizers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    return-object v0
.end method

.method public whitelist hasParameter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "parameter"    # Ljava/lang/String;

    .line 665
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected whitelist isHexDigit(C)Z
    .locals 1
    .param p1, "c"    # C

    .line 877
    invoke-virtual {p0, p1}, Landroid/net/UrlQuerySanitizer;->decodeHexDigit(C)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected whitelist parseEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "parameter"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 775
    invoke-virtual {p0, p1}, Landroid/net/UrlQuerySanitizer;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 776
    .local v0, "unescapedParameter":Ljava/lang/String;
    nop

    .line 777
    invoke-virtual {p0, v0}, Landroid/net/UrlQuerySanitizer;->getEffectiveValueSanitizer(Ljava/lang/String;)Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    move-result-object v1

    .line 779
    .local v1, "valueSanitizer":Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    if-nez v1, :cond_0

    .line 780
    return-void

    .line 782
    :cond_0
    invoke-virtual {p0, p2}, Landroid/net/UrlQuerySanitizer;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 783
    .local v2, "unescapedValue":Ljava/lang/String;
    invoke-interface {v1, v2}, Landroid/net/UrlQuerySanitizer$ValueSanitizer;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 784
    .local v3, "sanitizedValue":Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Landroid/net/UrlQuerySanitizer;->addSanitizedEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    return-void
.end method

.method public whitelist parseQuery(Ljava/lang/String;)V
    .locals 5
    .param p1, "query"    # Ljava/lang/String;

    .line 620
    invoke-virtual {p0}, Landroid/net/UrlQuerySanitizer;->clear()V

    .line 622
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "&"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    .local v0, "tokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 624
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 625
    .local v1, "attributeValuePair":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 626
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 627
    .local v2, "assignmentIndex":I
    if-gez v2, :cond_0

    .line 629
    const-string v3, ""

    invoke-virtual {p0, v1, v3}, Landroid/net/UrlQuerySanitizer;->parseEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 632
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    .line 633
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 632
    invoke-virtual {p0, v3, v4}, Landroid/net/UrlQuerySanitizer;->parseEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    .end local v1    # "attributeValuePair":Ljava/lang/String;
    .end local v2    # "assignmentIndex":I
    :cond_1
    :goto_1
    goto :goto_0

    .line 637
    :cond_2
    return-void
.end method

.method public whitelist parseUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 601
    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 603
    .local v0, "queryIndex":I
    if-ltz v0, :cond_0

    .line 604
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "query":Ljava/lang/String;
    goto :goto_0

    .line 607
    .end local v1    # "query":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    .line 609
    .restart local v1    # "query":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v1}, Landroid/net/UrlQuerySanitizer;->parseQuery(Ljava/lang/String;)V

    .line 610
    return-void
.end method

.method public whitelist registerParameter(Ljava/lang/String;Landroid/net/UrlQuerySanitizer$ValueSanitizer;)V
    .locals 1
    .param p1, "parameter"    # Ljava/lang/String;
    .param p2, "valueSanitizer"    # Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    .line 693
    if-nez p2, :cond_0

    .line 694
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mSanitizers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    :cond_0
    iget-object v0, p0, Landroid/net/UrlQuerySanitizer;->mSanitizers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    return-void
.end method

.method public whitelist registerParameters([Ljava/lang/String;Landroid/net/UrlQuerySanitizer$ValueSanitizer;)V
    .locals 4
    .param p1, "parameters"    # [Ljava/lang/String;
    .param p2, "valueSanitizer"    # Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    .line 707
    array-length v0, p1

    .line 708
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 709
    iget-object v2, p0, Landroid/net/UrlQuerySanitizer;->mSanitizers:Ljava/util/HashMap;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 711
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public whitelist setAllowUnregisteredParamaters(Z)V
    .locals 0
    .param p1, "allowUnregisteredParamaters"    # Z

    .line 723
    iput-boolean p1, p0, Landroid/net/UrlQuerySanitizer;->mAllowUnregisteredParamaters:Z

    .line 724
    return-void
.end method

.method public whitelist setPreferFirstRepeatedParameter(Z)V
    .locals 0
    .param p1, "preferFirstRepeatedParameter"    # Z

    .line 751
    iput-boolean p1, p0, Landroid/net/UrlQuerySanitizer;->mPreferFirstRepeatedParameter:Z

    .line 752
    return-void
.end method

.method public whitelist setUnregisteredParameterValueSanitizer(Landroid/net/UrlQuerySanitizer$ValueSanitizer;)V
    .locals 0
    .param p1, "sanitizer"    # Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    .line 435
    iput-object p1, p0, Landroid/net/UrlQuerySanitizer;->mUnregisteredParameterValueSanitizer:Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    .line 436
    return-void
.end method

.method public whitelist unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "string"    # Ljava/lang/String;

    .line 845
    sget-object v0, Landroid/net/UrlQuerySanitizer;->plusOrPercent:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 846
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_0

    return-object p1

    .line 847
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 849
    .local v1, "firstEscape":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 851
    .local v2, "length":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 852
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    move v4, v1

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_3

    .line 854
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 855
    .local v5, "c":C
    const/16 v6, 0x2b

    if-ne v5, v6, :cond_1

    .line 856
    const/16 v5, 0x20

    goto :goto_1

    .line 857
    :cond_1
    const/16 v6, 0x25

    if-ne v5, v6, :cond_2

    add-int/lit8 v6, v4, 0x2

    if-ge v6, v2, :cond_2

    .line 858
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 859
    .local v6, "c1":C
    add-int/lit8 v7, v4, 0x2

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 860
    .local v7, "c2":C
    invoke-virtual {p0, v6}, Landroid/net/UrlQuerySanitizer;->isHexDigit(C)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0, v7}, Landroid/net/UrlQuerySanitizer;->isHexDigit(C)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 861
    invoke-virtual {p0, v6}, Landroid/net/UrlQuerySanitizer;->decodeHexDigit(C)I

    move-result v8

    mul-int/lit8 v8, v8, 0x10

    invoke-virtual {p0, v7}, Landroid/net/UrlQuerySanitizer;->decodeHexDigit(C)I

    move-result v9

    add-int/2addr v8, v9

    int-to-char v5, v8

    .line 862
    add-int/lit8 v4, v4, 0x2

    .line 865
    .end local v6    # "c1":C
    .end local v7    # "c2":C
    :cond_2
    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 853
    .end local v5    # "c":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 867
    .end local v4    # "i":I
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
