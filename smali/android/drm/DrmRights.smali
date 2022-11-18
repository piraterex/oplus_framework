.class public Landroid/drm/DrmRights;
.super Ljava/lang/Object;
.source "DrmRights.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mAccountId:Ljava/lang/String;

.field private greylist-max-o mData:[B

.field private greylist-max-o mMimeType:Ljava/lang/String;

.field private greylist-max-o mSubscriptionId:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Landroid/drm/ProcessedData;Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Landroid/drm/ProcessedData;
    .param p2, "mimeType"    # Ljava/lang/String;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    if-eqz p1, :cond_1

    .line 126
    invoke-virtual {p1}, Landroid/drm/ProcessedData;->getData()[B

    move-result-object v0

    iput-object v0, p0, Landroid/drm/DrmRights;->mData:[B

    .line 127
    invoke-virtual {p1}, Landroid/drm/ProcessedData;->getAccountId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/drm/DrmRights;->mAccountId:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/drm/ProcessedData;->getSubscriptionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/drm/DrmRights;->mSubscriptionId:Ljava/lang/String;

    .line 129
    iput-object p2, p0, Landroid/drm/DrmRights;->mMimeType:Ljava/lang/String;

    .line 131
    invoke-virtual {p0}, Landroid/drm/DrmRights;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    return-void

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mimeType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/drm/DrmRights;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/drm/DrmRights;->mData:[B

    .line 133
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .param p1, "rightsFile"    # Ljava/io/File;
    .param p2, "mimeType"    # Ljava/lang/String;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/drm/DrmRights;->instantiate(Ljava/io/File;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "rightsFilePath"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, "file":Ljava/io/File;
    invoke-direct {p0, v0, p2}, Landroid/drm/DrmRights;->instantiate(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "rightsFilePath"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "accountId"    # Ljava/lang/String;

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/drm/DrmRights;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iput-object p3, p0, Landroid/drm/DrmRights;->mAccountId:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "rightsFilePath"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "accountId"    # Ljava/lang/String;
    .param p4, "subscriptionId"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/drm/DrmRights;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iput-object p3, p0, Landroid/drm/DrmRights;->mAccountId:Ljava/lang/String;

    .line 86
    iput-object p4, p0, Landroid/drm/DrmRights;->mSubscriptionId:Ljava/lang/String;

    .line 87
    return-void
.end method

.method private greylist-max-o instantiate(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "rightsFile"    # Ljava/io/File;
    .param p2, "mimeType"    # Ljava/lang/String;

    .line 101
    :try_start_0
    invoke-static {p1}, Landroid/drm/DrmUtils;->readBytes(Ljava/io/File;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/drm/DrmRights;->mData:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 106
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    iput-object p2, p0, Landroid/drm/DrmRights;->mMimeType:Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Landroid/drm/DrmRights;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    return-void

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mimeType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/drm/DrmRights;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/drm/DrmRights;->mData:[B

    .line 109
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist getAccountId()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Landroid/drm/DrmRights;->mAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getData()[B
    .locals 1

    .line 144
    iget-object v0, p0, Landroid/drm/DrmRights;->mData:[B

    return-object v0
.end method

.method public whitelist getMimeType()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Landroid/drm/DrmRights;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSubscriptionId()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Landroid/drm/DrmRights;->mSubscriptionId:Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o isValid()Z
    .locals 2

    .line 180
    iget-object v0, p0, Landroid/drm/DrmRights;->mMimeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/drm/DrmRights;->mData:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
