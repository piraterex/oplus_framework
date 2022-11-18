.class public Lcom/android/internal/telephony/SipMessageParsingUtils;
.super Ljava/lang/Object;
.source "SipMessageParsingUtils.java"


# static fields
.field private static final blacklist ACCEPT_CONTACT_HEADER_KEY:Ljava/lang/String; = "accept-contact"

.field private static final blacklist ACCEPT_CONTACT_HEADER_KEY_COMPACT:Ljava/lang/String; = "a"

.field private static final blacklist BRANCH_PARAM_KEY:Ljava/lang/String; = "branch"

.field private static final blacklist CALL_ID_SIP_HEADER_KEY:Ljava/lang/String; = "call-id"

.field private static final blacklist CALL_ID_SIP_HEADER_KEY_COMPACT:Ljava/lang/String; = "i"

.field private static final blacklist FROM_HEADER_KEY:Ljava/lang/String; = "from"

.field private static final blacklist FROM_HEADER_KEY_COMPACT:Ljava/lang/String; = "f"

.field private static final blacklist HEADER_KEY_VALUE_SEPARATOR:Ljava/lang/String; = ":"

.field private static final blacklist PARAM_KEY_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field private static final blacklist PARAM_SEPARATOR:Ljava/lang/String; = ";"

.field private static final blacklist SIP_REQUEST_METHODS:[Ljava/lang/String;

.field private static final blacklist SIP_VERSION_2:Ljava/lang/String; = "SIP/2.0"

.field private static final blacklist SUBHEADER_VALUE_SEPARATOR:Ljava/lang/String; = ","

.field private static final blacklist TAG:Ljava/lang/String; = "SipMessageParsingUtils"

.field private static final blacklist TAG_PARAM_KEY:Ljava/lang/String; = "tag"

.field private static final blacklist TO_HEADER_KEY:Ljava/lang/String; = "to"

.field private static final blacklist TO_HEADER_KEY_COMPACT:Ljava/lang/String; = "t"

.field private static final blacklist VIA_SIP_HEADER_KEY:Ljava/lang/String; = "via"

.field private static final blacklist VIA_SIP_HEADER_KEY_COMPACT:Ljava/lang/String; = "v"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 14

    .line 41
    const-string v0, "INVITE"

    const-string v1, "ACK"

    const-string v2, "OPTIONS"

    const-string v3, "BYE"

    const-string v4, "CANCEL"

    const-string v5, "REGISTER"

    const-string v6, "PRACK"

    const-string v7, "SUBSCRIBE"

    const-string v8, "NOTIFY"

    const-string v9, "PUBLISH"

    const-string v10, "INFO"

    const-string v11, "REFER"

    const-string v12, "MESSAGE"

    const-string v13, "UPDATE"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SipMessageParsingUtils;->SIP_REQUEST_METHODS:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getAcceptContactFeatureTags(Ljava/lang/String;)Ljava/util/Set;
    .locals 17
    .param p0, "headerString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 224
    const-string v0, "accept-contact"

    const-string v1, "a"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object/from16 v2, p0

    invoke-static {v2, v1, v0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->parseHeaders(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 226
    .local v0, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 229
    :cond_0
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 230
    .local v3, "featureTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 231
    .local v5, "header":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 232
    .local v6, "splitParams":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x2

    if-ge v7, v8, :cond_1

    .line 233
    goto :goto_0

    .line 237
    :cond_1
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    array-length v9, v6

    const/4 v10, 0x1

    invoke-interface {v7, v10, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v9, Lcom/android/internal/telephony/SipMessageParsingUtils$$ExternalSyntheticLambda1;

    invoke-direct {v9}, Lcom/android/internal/telephony/SipMessageParsingUtils$$ExternalSyntheticLambda1;-><init>()V

    .line 238
    invoke-interface {v7, v9}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v9, Lcom/android/internal/telephony/SipMessageParsingUtils$$ExternalSyntheticLambda2;

    invoke-direct {v9}, Lcom/android/internal/telephony/SipMessageParsingUtils$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v7, v9}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v7

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 239
    .local v7, "fts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 240
    .local v11, "ft":Ljava/lang/String;
    const-string v12, "="

    invoke-virtual {v11, v12, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    .line 241
    .local v13, "paramKeyValue":[Ljava/lang/String;
    array-length v14, v13

    if-ge v14, v8, :cond_2

    .line 242
    invoke-interface {v3, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 243
    goto :goto_1

    .line 246
    :cond_2
    aget-object v14, v13, v10

    invoke-static {v14}, Lcom/android/internal/telephony/SipMessageParsingUtils;->splitParamValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 247
    .local v14, "splitValue":[Ljava/lang/String;
    array-length v15, v14

    move v8, v1

    :goto_2
    if-ge v8, v15, :cond_3

    aget-object v10, v14, v8

    .line 248
    .local v10, "value":Ljava/lang/String;
    move-object/from16 v16, v0

    .end local v0    # "headers":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local v16, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v13, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 247
    .end local v10    # "value":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    const/4 v10, 0x1

    move-object/from16 v2, p0

    move-object/from16 v0, v16

    goto :goto_2

    .end local v16    # "headers":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v0    # "headers":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_3
    move-object/from16 v16, v0

    .line 250
    .end local v0    # "headers":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v11    # "ft":Ljava/lang/String;
    .end local v13    # "paramKeyValue":[Ljava/lang/String;
    .end local v14    # "splitValue":[Ljava/lang/String;
    .restart local v16    # "headers":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v8, 0x2

    const/4 v10, 0x1

    move-object/from16 v2, p0

    goto :goto_1

    .line 239
    .end local v16    # "headers":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v0    # "headers":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_4
    move-object/from16 v16, v0

    .line 251
    .end local v0    # "headers":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v5    # "header":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "splitParams":[Ljava/lang/String;
    .end local v7    # "fts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v16    # "headers":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object/from16 v2, p0

    goto/16 :goto_0

    .line 252
    .end local v16    # "headers":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v0    # "headers":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_5
    return-object v3
.end method

.method public static blacklist getCallId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "headerString"    # Ljava/lang/String;

    .line 175
    const-string v0, "call-id"

    const-string v1, "i"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->parseHeaders(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 177
    .local v0, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static blacklist getFromTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "headerString"    # Ljava/lang/String;

    .line 185
    const-string v0, "from"

    const-string v1, "f"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->parseHeaders(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 187
    .local v0, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    const/4 v1, 0x0

    return-object v1

    .line 191
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "tag"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SipMessageParsingUtils;->getParameterValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getParameterValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "headerValue"    # Ljava/lang/String;
    .param p1, "parameterKey"    # Ljava/lang/String;

    .line 144
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "params":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    .line 146
    return-object v2

    .line 149
    :cond_0
    array-length v1, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_4

    aget-object v6, v0, v5

    .line 150
    .local v6, "param":Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 151
    .local v7, "pair":[Ljava/lang/String;
    array-length v8, v7

    if-ge v8, v3, :cond_1

    .line 153
    goto :goto_1

    .line 155
    :cond_1
    array-length v8, v7

    if-le v8, v3, :cond_2

    .line 156
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getParameterValue: unexpected parameter"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 157
    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 156
    const-string v9, "SipMessageParsingUtils"

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_2
    aget-object v8, v7, v4

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    .line 161
    const/4 v8, 0x1

    aget-object v9, v7, v8

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 162
    aget-object v9, v7, v4

    invoke-virtual {p1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 163
    aget-object v1, v7, v8

    return-object v1

    .line 149
    .end local v6    # "param":Ljava/lang/String;
    .end local v7    # "pair":[Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 166
    :cond_4
    return-object v2
.end method

.method public static blacklist getToTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "headerString"    # Ljava/lang/String;

    .line 199
    const-string/jumbo v0, "to"

    const-string/jumbo v1, "t"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->parseHeaders(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 201
    .local v0, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    const/4 v1, 0x0

    return-object v1

    .line 205
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "tag"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SipMessageParsingUtils;->getParameterValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getTransactionId(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "headerString"    # Ljava/lang/String;

    .line 120
    const-string/jumbo v0, "via"

    const-string/jumbo v1, "v"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->parseHeaders(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 122
    .local v0, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 126
    .local v2, "header":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "subHeaders":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 128
    .local v6, "subHeader":Ljava/lang/String;
    const-string v7, "branch"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/SipMessageParsingUtils;->getParameterValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 129
    .local v7, "paramValue":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 127
    .end local v6    # "subHeader":Ljava/lang/String;
    .end local v7    # "paramValue":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 130
    .restart local v6    # "subHeader":Ljava/lang/String;
    .restart local v7    # "paramValue":Ljava/lang/String;
    :cond_0
    return-object v7

    .line 132
    .end local v2    # "header":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "subHeaders":[Ljava/lang/String;
    .end local v6    # "subHeader":Ljava/lang/String;
    .end local v7    # "paramValue":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 133
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist isSipRequest(Ljava/lang/String;)Z
    .locals 2
    .param p0, "startLine"    # Ljava/lang/String;

    .line 99
    invoke-static {p0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->splitStartLineAndVerify(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "splitLine":[Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 101
    :cond_0
    invoke-static {v0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->verifySipRequest([Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static blacklist isSipResponse(Ljava/lang/String;)Z
    .locals 2
    .param p0, "startLine"    # Ljava/lang/String;

    .line 108
    invoke-static {p0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->splitStartLineAndVerify(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "splitLine":[Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 110
    :cond_0
    invoke-static {v0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->verifySipResponse([Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static blacklist isStartLineMalformed([Ljava/lang/String;)Z
    .locals 3
    .param p0, "startLine"    # [Ljava/lang/String;

    .line 274
    const/4 v0, 0x1

    if-eqz p0, :cond_2

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 280
    :cond_0
    array-length v1, p0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 275
    :cond_2
    :goto_1
    return v0
.end method

.method static synthetic blacklist lambda$getAcceptContactFeatureTags$0(Ljava/lang/String;)Z
    .locals 1
    .param p0, "p"    # Ljava/lang/String;

    .line 238
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$parseHeaders$2(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 348
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$parseHeaders$3(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 376
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$verifySipRequest$1([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "request"    # [Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 292
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static varargs blacklist parseHeaders(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p0, "headerString"    # Ljava/lang/String;
    .param p1, "stopAtFirstMatch"    # Z
    .param p2, "matchingHeaderKeys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 323
    invoke-static {p0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->removeLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v1, "\\r?\\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "headerLines":[Ljava/lang/String;
    array-length v2, v1

    if-nez v2, :cond_0

    .line 329
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 332
    :cond_0
    const/4 v2, 0x0

    .line 333
    .local v2, "headerKey":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .local v3, "headerValueSegment":Ljava/lang/StringBuilder;
    array-length v4, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_8

    aget-object v7, v1, v6

    .line 338
    .local v7, "line":Ljava/lang/String;
    const-string v8, "\t"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_2

    .line 344
    :cond_1
    if-eqz v2, :cond_4

    .line 345
    move-object v8, v2

    .line 346
    .local v8, "key":Ljava/lang/String;
    if-eqz p2, :cond_2

    array-length v9, p2

    if-eqz v9, :cond_2

    .line 347
    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v9

    new-instance v10, Lcom/android/internal/telephony/SipMessageParsingUtils$$ExternalSyntheticLambda3;

    invoke-direct {v10, v8}, Lcom/android/internal/telephony/SipMessageParsingUtils$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 349
    :cond_2
    new-instance v9, Landroid/util/Pair;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v8, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    if-eqz p1, :cond_3

    .line 351
    return-object v0

    .line 354
    :cond_3
    const/4 v2, 0x0

    .line 355
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v9

    .line 359
    .end local v8    # "key":Ljava/lang/String;
    :cond_4
    const-string v8, ":"

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 360
    .local v8, "pair":[Ljava/lang/String;
    array-length v10, v8

    if-ge v10, v9, :cond_5

    .line 362
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "parseHeaders - received malformed line: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "SipMessageParsingUtils"

    invoke-static {v10, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    goto :goto_3

    .line 366
    :cond_5
    aget-object v9, v8, v5

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 367
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_1
    array-length v10, v8

    if-ge v9, v10, :cond_7

    .line 368
    aget-object v10, v8, v9

    invoke-static {v10}, Lcom/android/internal/telephony/SipMessageParsingUtils;->removeLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 339
    .end local v8    # "pair":[Ljava/lang/String;
    .end local v9    # "i":I
    :cond_6
    :goto_2
    invoke-static {v7}, Lcom/android/internal/telephony/SipMessageParsingUtils;->removeLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    nop

    .line 336
    .end local v7    # "line":Ljava/lang/String;
    :cond_7
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 372
    :cond_8
    if-eqz v2, :cond_a

    .line 373
    move-object v4, v2

    .line 374
    .local v4, "key":Ljava/lang/String;
    if-eqz p2, :cond_9

    array-length v5, p2

    if-eqz v5, :cond_9

    .line 375
    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/internal/telephony/SipMessageParsingUtils$$ExternalSyntheticLambda4;

    invoke-direct {v6, v4}, Lcom/android/internal/telephony/SipMessageParsingUtils$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 377
    :cond_9
    new-instance v5, Landroid/util/Pair;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    .end local v4    # "key":Ljava/lang/String;
    :cond_a
    return-object v0
.end method

.method private static blacklist removeLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "line"    # Ljava/lang/String;

    .line 385
    const-string v0, "^\\s*"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist splitParamValue(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "paramValue"    # Ljava/lang/String;

    .line 260
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0

    .line 264
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 265
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "splitValues":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 266
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public static blacklist splitStartLineAndVerify(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "startLine"    # Ljava/lang/String;

    .line 214
    const-string v0, " "

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "splitLine":[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->isStartLineMalformed([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 216
    :cond_0
    return-object v0
.end method

.method private static blacklist verifySipRequest([Ljava/lang/String;)Z
    .locals 3
    .param p0, "request"    # [Ljava/lang/String;

    .line 285
    const/4 v0, 0x2

    aget-object v0, p0, v0

    const-string v1, "SIP/2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 288
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    aget-object v2, p0, v0

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    move v1, v0

    :cond_1
    move v0, v1

    .line 291
    .local v0, "verified":Z
    nop

    .line 292
    sget-object v1, Lcom/android/internal/telephony/SipMessageParsingUtils;->SIP_REQUEST_METHODS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/SipMessageParsingUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SipMessageParsingUtils$$ExternalSyntheticLambda0;-><init>([Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 293
    return v0

    .line 289
    .end local v0    # "verified":Z
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v1
.end method

.method private static blacklist verifySipResponse([Ljava/lang/String;)Z
    .locals 4
    .param p0, "response"    # [Ljava/lang/String;

    .line 298
    const/4 v0, 0x0

    aget-object v1, p0, v0

    const-string v2, "SIP/2.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 301
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .local v2, "statusCode":I
    nop

    .line 305
    const/16 v3, 0x64

    if-lt v2, v3, :cond_1

    const/16 v3, 0x2bc

    if-ge v2, v3, :cond_1

    move v0, v1

    :cond_1
    return v0

    .line 302
    .end local v2    # "statusCode":I
    :catch_0
    move-exception v1

    .line 303
    .local v1, "e":Ljava/lang/NumberFormatException;
    return v0
.end method
