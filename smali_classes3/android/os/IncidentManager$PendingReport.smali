.class public Landroid/os/IncidentManager$PendingReport;
.super Ljava/lang/Object;
.source "IncidentManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IncidentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingReport"
.end annotation


# instance fields
.field private final blacklist mFlags:I

.field private final blacklist mRequestingPackage:Ljava/lang/String;

.field private final blacklist mTimestamp:J

.field private final blacklist mUri:Landroid/net/Uri;


# direct methods
.method public constructor whitelist <init>(Landroid/net/Uri;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const/4 v0, 0x0

    .line 187
    .local v0, "flags":I
    :try_start_0
    const-string v1, "flags"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    .line 191
    nop

    .line 192
    iput v0, p0, Landroid/os/IncidentManager$PendingReport;->mFlags:I

    .line 194
    const-string/jumbo v1, "pkg"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "requestingPackage":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 199
    iput-object v1, p0, Landroid/os/IncidentManager$PendingReport;->mRequestingPackage:Ljava/lang/String;

    .line 201
    const-wide/16 v2, -0x1

    .line 203
    .local v2, "timestamp":J
    :try_start_1
    const-string/jumbo v4, "t"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v2, v4

    .line 207
    nop

    .line 208
    iput-wide v2, p0, Landroid/os/IncidentManager$PendingReport;->mTimestamp:J

    .line 210
    iput-object p1, p0, Landroid/os/IncidentManager$PendingReport;->mUri:Landroid/net/Uri;

    .line 211
    return-void

    .line 204
    :catch_0
    move-exception v4

    .line 205
    .local v4, "ex":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid URI: No t parameter. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 196
    .end local v2    # "timestamp":J
    .end local v4    # "ex":Ljava/lang/NumberFormatException;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid URI: No pkg parameter. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 188
    .end local v1    # "requestingPackage":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 189
    .local v1, "ex":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid URI: No flags parameter. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 258
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 259
    return v0

    .line 261
    :cond_0
    instance-of v1, p1, Landroid/os/IncidentManager$PendingReport;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 262
    return v2

    .line 264
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/os/IncidentManager$PendingReport;

    .line 265
    .local v1, "that":Landroid/os/IncidentManager$PendingReport;
    iget-object v3, p0, Landroid/os/IncidentManager$PendingReport;->mUri:Landroid/net/Uri;

    iget-object v4, v1, Landroid/os/IncidentManager$PendingReport;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/os/IncidentManager$PendingReport;->mFlags:I

    iget v4, v1, Landroid/os/IncidentManager$PendingReport;->mFlags:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/os/IncidentManager$PendingReport;->mRequestingPackage:Ljava/lang/String;

    iget-object v4, v1, Landroid/os/IncidentManager$PendingReport;->mRequestingPackage:Ljava/lang/String;

    .line 267
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Landroid/os/IncidentManager$PendingReport;->mTimestamp:J

    iget-wide v5, v1, Landroid/os/IncidentManager$PendingReport;->mTimestamp:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 265
    :goto_0
    return v0
.end method

.method public whitelist getFlags()I
    .locals 1

    .line 226
    iget v0, p0, Landroid/os/IncidentManager$PendingReport;->mFlags:I

    return v0
.end method

.method public whitelist getRequestingPackage()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Landroid/os/IncidentManager$PendingReport;->mRequestingPackage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTimestamp()J
    .locals 2

    .line 233
    iget-wide v0, p0, Landroid/os/IncidentManager$PendingReport;->mTimestamp:J

    return-wide v0
.end method

.method public whitelist getUri()Landroid/net/Uri;
    .locals 1

    .line 242
    iget-object v0, p0, Landroid/os/IncidentManager$PendingReport;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PendingReport("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/IncidentManager$PendingReport;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
