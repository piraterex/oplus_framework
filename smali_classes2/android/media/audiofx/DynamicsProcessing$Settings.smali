.class public Landroid/media/audiofx/DynamicsProcessing$Settings;
.super Ljava/lang/Object;
.source "DynamicsProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/DynamicsProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field public greylist-max-o channelCount:I

.field public greylist-max-o inputGain:[F


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 2298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2299
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "settings"    # Ljava/lang/String;

    .line 2306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2307
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "=;"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2309
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    const-string v2, "settings: "

    const/4 v3, 0x3

    if-ne v1, v3, :cond_6

    .line 2312
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 2313
    .local v1, "key":Ljava/lang/String;
    const-string v3, "DynamicsProcessing"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2318
    :try_start_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 2319
    const-string v3, "channelCount"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "invalid key name: "

    if-eqz v3, :cond_4

    .line 2322
    :try_start_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    iput v3, p0, Landroid/media/audiofx/DynamicsProcessing$Settings;->channelCount:I

    .line 2323
    const/16 v5, 0x20

    if-gt v3, v5, :cond_3

    .line 2326
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    iget v5, p0, Landroid/media/audiofx/DynamicsProcessing$Settings;->channelCount:I

    mul-int/lit8 v6, v5, 0x1

    if-ne v3, v6, :cond_2

    .line 2330
    new-array v2, v5, [F

    iput-object v2, p0, Landroid/media/audiofx/DynamicsProcessing$Settings;->inputGain:[F

    .line 2331
    const/4 v2, 0x0

    .local v2, "ch":I
    :goto_0
    iget v3, p0, Landroid/media/audiofx/DynamicsProcessing$Settings;->channelCount:I

    if-ge v2, v3, :cond_1

    .line 2332
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 2333
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "_inputGain"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2336
    iget-object v3, p0, Landroid/media/audiofx/DynamicsProcessing$Settings;->inputGain:[F

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v3, v2

    .line 2331
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2334
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "st":Ljava/util/StringTokenizer;
    .end local v1    # "key":Ljava/lang/String;
    .end local p0    # "this":Landroid/media/audiofx/DynamicsProcessing$Settings;
    .end local p1    # "settings":Ljava/lang/String;
    throw v3

    .line 2340
    .end local v2    # "ch":I
    .restart local v0    # "st":Ljava/util/StringTokenizer;
    .restart local v1    # "key":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/audiofx/DynamicsProcessing$Settings;
    .restart local p1    # "settings":Ljava/lang/String;
    :cond_1
    nop

    .line 2341
    return-void

    .line 2327
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "st":Ljava/util/StringTokenizer;
    .end local v1    # "key":Ljava/lang/String;
    .end local p0    # "this":Landroid/media/audiofx/DynamicsProcessing$Settings;
    .end local p1    # "settings":Ljava/lang/String;
    throw v3

    .line 2324
    .restart local v0    # "st":Ljava/util/StringTokenizer;
    .restart local v1    # "key":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/audiofx/DynamicsProcessing$Settings;
    .restart local p1    # "settings":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "too many channels Settings:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "st":Ljava/util/StringTokenizer;
    .end local v1    # "key":Ljava/lang/String;
    .end local p0    # "this":Landroid/media/audiofx/DynamicsProcessing$Settings;
    .end local p1    # "settings":Ljava/lang/String;
    throw v2

    .line 2320
    .restart local v0    # "st":Ljava/util/StringTokenizer;
    .restart local v1    # "key":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/audiofx/DynamicsProcessing$Settings;
    .restart local p1    # "settings":Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "st":Ljava/util/StringTokenizer;
    .end local v1    # "key":Ljava/lang/String;
    .end local p0    # "this":Landroid/media/audiofx/DynamicsProcessing$Settings;
    .end local p1    # "settings":Ljava/lang/String;
    throw v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2338
    .restart local v0    # "st":Ljava/util/StringTokenizer;
    .restart local v1    # "key":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/audiofx/DynamicsProcessing$Settings;
    .restart local p1    # "settings":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2339
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid value for key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2314
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid settings for DynamicsProcessing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2310
    .end local v1    # "key":Ljava/lang/String;
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 2345
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DynamicsProcessing;channelCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/audiofx/DynamicsProcessing$Settings;->channelCount:I

    .line 2347
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2348
    .local v0, "str":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "ch":I
    :goto_0
    iget v2, p0, Landroid/media/audiofx/DynamicsProcessing$Settings;->channelCount:I

    if-ge v1, v2, :cond_0

    .line 2349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_inputGain="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/audiofx/DynamicsProcessing$Settings;->inputGain:[F

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2348
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2351
    .end local v1    # "ch":I
    :cond_0
    return-object v0
.end method
