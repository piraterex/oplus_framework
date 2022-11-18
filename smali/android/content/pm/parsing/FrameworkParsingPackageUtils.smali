.class public Landroid/content/pm/parsing/FrameworkParsingPackageUtils;
.super Ljava/lang/Object;
.source "FrameworkParsingPackageUtils.java"


# static fields
.field private static final blacklist MAX_FILE_NAME_SIZE:I = 0xdf

.field public static final blacklist PARSE_APK_IN_APEX:I = 0x200

.field public static final blacklist PARSE_IGNORE_OVERLAY_REQUIRED_SYSTEM_PROPERTY:I = 0x80

.field private static final blacklist TAG:Ljava/lang/String; = "FrameworkParsingPackageUtils"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkRequiredSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "rawPropNames"    # Ljava/lang/String;
    .param p1, "rawPropValues"    # Ljava/lang/String;

    .line 194
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "="

    const-string v2, "FrameworkParsingPackageUtils"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 206
    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 207
    .local v5, "propNames":[Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "propValues":[Ljava/lang/String;
    array-length v6, v5

    array-length v7, v0

    if-eq v6, v7, :cond_1

    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Disabling overlay - property :\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' - require both requiredSystemPropertyName AND requiredSystemPropertyValue lists to have the same size."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return v4

    .line 215
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v5

    if-ge v1, v2, :cond_3

    .line 217
    aget-object v2, v5, v1

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "currValue":Ljava/lang/String;
    aget-object v6, v0, v1

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 219
    return v4

    .line 215
    .end local v2    # "currValue":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    .end local v1    # "i":I
    :cond_3
    return v3

    .line 195
    .end local v0    # "propValues":[Ljava/lang/String;
    .end local v5    # "propNames":[Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    .line 203
    :cond_5
    return v3

    .line 197
    :cond_6
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disabling overlay - incomplete property :\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' - require both requiredSystemPropertyName AND requiredSystemPropertyValue to be specified."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return v4
.end method

.method public static blacklist computeMaxSdkVersion(IILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 3
    .param p0, "maxVers"    # I
    .param p1, "platformSdkVersion"    # I
    .param p2, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 414
    if-le p1, p0, :cond_0

    .line 415
    const/16 v0, -0xe

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requires max SDK version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 419
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist computeMinSdkVersion(ILjava/lang/String;I[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 4
    .param p0, "minVers"    # I
    .param p1, "minCode"    # Ljava/lang/String;
    .param p2, "platformSdkVersion"    # I
    .param p3, "platformSdkCodenames"    # [Ljava/lang/String;
    .param p4, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 302
    const-string v0, ")"

    const/16 v1, -0xc

    if-nez p1, :cond_1

    .line 303
    if-gt p0, p2, :cond_0

    .line 304
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 308
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requires newer sdk version #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (current version is #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 315
    :cond_1
    invoke-static {p3, p1}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->matchTargetCode([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 316
    const/16 v0, 0x2710

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 320
    :cond_2
    array-length v2, p3

    const-string v3, "Requires development platform "

    if-lez v2, :cond_3

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (current platform is any of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 324
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    invoke-interface {p4, v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 326
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " but this is a release platform."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist computeTargetSdkVersion(ILjava/lang/String;[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;Z)Landroid/content/pm/parsing/result/ParseResult;
    .locals 3
    .param p0, "targetVers"    # I
    .param p1, "targetCode"    # Ljava/lang/String;
    .param p2, "platformSdkCodenames"    # [Ljava/lang/String;
    .param p3, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p4, "allowUnknownCodenames"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 367
    if-nez p1, :cond_0

    .line 368
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 372
    :cond_0
    const/16 v0, 0x2710

    const/16 v1, -0xc

    if-eqz p4, :cond_1

    :try_start_0
    invoke-static {p1}, Landroid/internal/modules/utils/build/UnboundedSdkLevel;->isAtMost(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 373
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 375
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 378
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    nop

    .line 382
    invoke-static {p2, p1}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->matchTargetCode([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 383
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 387
    :cond_2
    array-length v0, p2

    const-string v2, "Requires development platform "

    if-lez v0, :cond_3

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (current platform is any of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 391
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-interface {p3, v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 393
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " but this is a release platform."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZLandroid/content/pm/SigningDetails;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 5
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "baseCodePath"    # Ljava/lang/String;
    .param p2, "skipVerify"    # Z
    .param p3, "isStaticSharedLibrary"    # Z
    .param p4, "existingSigningDetails"    # Landroid/content/pm/SigningDetails;
    .param p5, "targetSdk"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "ZZ",
            "Landroid/content/pm/SigningDetails;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation

    .line 229
    invoke-static {p5}, Landroid/util/apk/ApkSignatureVerifier;->getMinimumSignatureSchemeVersionForTargetSdk(I)I

    move-result v0

    .line 231
    .local v0, "minSignatureScheme":I
    if-eqz p3, :cond_0

    .line 233
    const/4 v0, 0x2

    .line 236
    :cond_0
    if-eqz p2, :cond_1

    .line 240
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/util/apk/ApkSignatureVerifier;->unsafeGetCertsWithoutVerification(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .local v1, "verified":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    goto :goto_0

    .line 243
    .end local v1    # "verified":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    :cond_1
    invoke-static {p0, p1, v0}, Landroid/util/apk/ApkSignatureVerifier;->verify(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 246
    .restart local v1    # "verified":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    :goto_0
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 247
    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 253
    :cond_2
    sget-object v2, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-ne p4, v2, :cond_3

    .line 254
    return-object v1

    .line 256
    :cond_3
    invoke-virtual {p4}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v2

    .line 257
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/SigningDetails;

    invoke-virtual {v3}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v3

    .line 256
    invoke-static {v2, v3}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 258
    const/16 v2, -0x68

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has mismatched certificates"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 262
    :cond_4
    invoke-interface {p0, p4}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist matchTargetCode([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "codeNames"    # [Ljava/lang/String;
    .param p1, "targetCode"    # Ljava/lang/String;

    .line 431
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 432
    .local v0, "targetCodeIdx":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 433
    move-object v1, p1

    .local v1, "targetCodeName":Ljava/lang/String;
    goto :goto_0

    .line 435
    .end local v1    # "targetCodeName":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 437
    .restart local v1    # "targetCodeName":Ljava/lang/String;
    :goto_0
    invoke-static {p0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static blacklist parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 4
    .param p0, "encodedPublicKey"    # Ljava/lang/String;

    .line 121
    const/4 v0, 0x0

    const-string v1, "FrameworkParsingPackageUtils"

    if-nez p0, :cond_0

    .line 122
    const-string v2, "Could not parse null public key"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-object v0

    .line 127
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->parsePublicKey([B)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 128
    :catch_0
    move-exception v2

    .line 129
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "Could not parse verifier public key; invalid Base64"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-object v0
.end method

.method public static blacklist parsePublicKey([B)Ljava/security/PublicKey;
    .locals 5
    .param p0, "publicKey"    # [B

    .line 138
    const/4 v0, 0x0

    const-string v1, "FrameworkParsingPackageUtils"

    if-nez p0, :cond_0

    .line 139
    const-string v2, "Could not parse null public key"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-object v0

    .line 145
    :cond_0
    :try_start_0
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6

    .line 149
    .local v2, "keySpec":Ljava/security/spec/EncodedKeySpec;
    nop

    .line 153
    :try_start_1
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 154
    .local v3, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v3, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 157
    .end local v3    # "keyFactory":Ljava/security/KeyFactory;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 155
    :catch_1
    move-exception v3

    .line 156
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v4, "Could not parse public key: RSA KeyFactory not included in build"

    invoke-static {v1, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    nop

    .line 163
    :goto_0
    :try_start_2
    const-string v3, "EC"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 164
    .local v3, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v3, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    .line 167
    .end local v3    # "keyFactory":Ljava/security/KeyFactory;
    :catch_2
    move-exception v3

    goto :goto_1

    .line 165
    :catch_3
    move-exception v3

    .line 166
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v4, "Could not parse public key: EC KeyFactory not included in build"

    invoke-static {v1, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    nop

    .line 173
    :goto_1
    :try_start_3
    const-string v3, "DSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 174
    .local v3, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v3, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_4

    return-object v0

    .line 177
    .end local v3    # "keyFactory":Ljava/security/KeyFactory;
    :catch_4
    move-exception v1

    goto :goto_2

    .line 175
    :catch_5
    move-exception v3

    .line 176
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v4, "Could not parse public key: DSA KeyFactory not included in build"

    invoke-static {v1, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    nop

    .line 182
    :goto_2
    return-object v0

    .line 146
    .end local v2    # "keySpec":Ljava/security/spec/EncodedKeySpec;
    :catch_6
    move-exception v2

    .line 147
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "Could not parse verifier public key; invalid Base64"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-object v0
.end method

.method public static blacklist validateName(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZ)Landroid/content/pm/parsing/result/ParseResult;
    .locals 2
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "requireSeparator"    # Z
    .param p3, "requireFilename"    # Z

    .line 110
    invoke-static {p1, p2, p3}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "errorMessage":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 112
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 114
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist validateName(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "requireSeparator"    # Z
    .param p2, "requireFilename"    # Z

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 75
    .local v0, "N":I
    const/4 v1, 0x0

    .line 76
    .local v1, "hasSep":Z
    const/4 v2, 0x1

    .line 77
    .local v2, "front":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_7

    .line 78
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 79
    .local v4, "c":C
    const/16 v5, 0x61

    if-lt v4, v5, :cond_0

    const/16 v5, 0x7a

    if-le v4, v5, :cond_1

    :cond_0
    const/16 v5, 0x41

    if-lt v4, v5, :cond_2

    const/16 v5, 0x5a

    if-gt v4, v5, :cond_2

    .line 80
    :cond_1
    const/4 v2, 0x0

    .line 81
    goto :goto_1

    .line 83
    :cond_2
    if-nez v2, :cond_4

    .line 84
    const/16 v5, 0x30

    if-lt v4, v5, :cond_3

    const/16 v5, 0x39

    if-le v4, v5, :cond_5

    :cond_3
    const/16 v5, 0x5f

    if-ne v4, v5, :cond_4

    .line 85
    goto :goto_1

    .line 88
    :cond_4
    const/16 v5, 0x2e

    if-ne v4, v5, :cond_6

    .line 89
    const/4 v1, 0x1

    .line 90
    const/4 v2, 0x1

    .line 91
    nop

    .line 77
    .end local v4    # "c":C
    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 93
    .restart local v4    # "c":C
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad character \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 95
    .end local v3    # "i":I
    .end local v4    # "c":C
    :cond_7
    if-eqz p2, :cond_9

    .line 96
    invoke-static {p0}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 97
    const-string v3, "Invalid filename"

    return-object v3

    .line 98
    :cond_8
    const/16 v3, 0xdf

    if-le v0, v3, :cond_9

    .line 99
    const-string/jumbo v3, "the length of the name is greater than 223"

    return-object v3

    .line 102
    :cond_9
    if-nez v1, :cond_b

    if-nez p1, :cond_a

    goto :goto_2

    :cond_a
    const-string/jumbo v3, "must have at least one \'.\' separator"

    goto :goto_3

    :cond_b
    :goto_2
    const/4 v3, 0x0

    :goto_3
    return-object v3
.end method
