.class public final Landroid/app/job/JobWorkItem;
.super Ljava/lang/Object;
.source "JobWorkItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/job/JobWorkItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field greylist-max-p mDeliveryCount:I

.field greylist-max-p mGrants:Ljava/lang/Object;

.field final greylist-max-p mIntent:Landroid/content/Intent;

.field private final blacklist mMinimumChunkBytes:J

.field private final greylist-max-o mNetworkDownloadBytes:J

.field private final greylist-max-o mNetworkUploadBytes:J

.field greylist-max-p mWorkId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 262
    new-instance v0, Landroid/app/job/JobWorkItem$1;

    invoke-direct {v0}, Landroid/app/job/JobWorkItem$1;-><init>()V

    sput-object v0, Landroid/app/job/JobWorkItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 54
    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/app/job/JobWorkItem;-><init>(Landroid/content/Intent;JJ)V

    .line 55
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Intent;JJ)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "downloadBytes"    # J
    .param p4, "uploadBytes"    # J

    .line 71
    const-wide/16 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Landroid/app/job/JobWorkItem;-><init>(Landroid/content/Intent;JJJ)V

    .line 72
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Intent;JJJ)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "downloadBytes"    # J
    .param p4, "uploadBytes"    # J
    .param p6, "minimumChunkBytes"    # J

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const-wide/16 v0, -0x1

    cmp-long v2, p6, v0

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    cmp-long v2, p6, v3

    if-lez v2, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum chunk size must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1
    :goto_0
    cmp-long v2, p4, v0

    if-nez v2, :cond_2

    .line 96
    move-wide v2, p2

    .local v2, "estimatedTransfer":J
    goto :goto_2

    .line 98
    .end local v2    # "estimatedTransfer":J
    :cond_2
    nop

    .line 99
    cmp-long v2, p2, v0

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move-wide v3, p2

    :goto_1
    add-long v2, p4, v3

    .line 101
    .restart local v2    # "estimatedTransfer":J
    :goto_2
    cmp-long v4, p6, v0

    if-eqz v4, :cond_5

    cmp-long v0, v2, v0

    if-eqz v0, :cond_5

    cmp-long v0, p6, v2

    if-gtz v0, :cond_4

    goto :goto_3

    .line 103
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum chunk size can\'t be greater than estimated network usage"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_5
    :goto_3
    iput-object p1, p0, Landroid/app/job/JobWorkItem;->mIntent:Landroid/content/Intent;

    .line 107
    iput-wide p2, p0, Landroid/app/job/JobWorkItem;->mNetworkDownloadBytes:J

    .line 108
    iput-wide p4, p0, Landroid/app/job/JobWorkItem;->mNetworkUploadBytes:J

    .line 109
    iput-wide p6, p0, Landroid/app/job/JobWorkItem;->mMinimumChunkBytes:J

    .line 110
    return-void
.end method

.method constructor greylist-max-p <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/app/job/JobWorkItem;->mIntent:Landroid/content/Intent;

    goto :goto_0

    .line 278
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/job/JobWorkItem;->mIntent:Landroid/content/Intent;

    .line 280
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobWorkItem;->mNetworkDownloadBytes:J

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobWorkItem;->mNetworkUploadBytes:J

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobWorkItem;->mMinimumChunkBytes:J

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobWorkItem;->mDeliveryCount:I

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobWorkItem;->mWorkId:I

    .line 285
    return-void
.end method


# virtual methods
.method public greylist-max-o bumpDeliveryCount()V
    .locals 1

    .line 165
    iget v0, p0, Landroid/app/job/JobWorkItem;->mDeliveryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/job/JobWorkItem;->mDeliveryCount:I

    .line 166
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enforceValidity()V
    .locals 9

    .line 227
    iget-wide v0, p0, Landroid/app/job/JobWorkItem;->mNetworkUploadBytes:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    const-wide/16 v5, 0x0

    if-nez v4, :cond_0

    .line 228
    iget-wide v0, p0, Landroid/app/job/JobWorkItem;->mNetworkDownloadBytes:J

    .local v0, "estimatedTransfer":J
    goto :goto_0

    .line 230
    .end local v0    # "estimatedTransfer":J
    :cond_0
    nop

    .line 231
    iget-wide v7, p0, Landroid/app/job/JobWorkItem;->mNetworkDownloadBytes:J

    cmp-long v4, v7, v2

    if-nez v4, :cond_1

    move-wide v7, v5

    :cond_1
    add-long/2addr v0, v7

    .line 233
    .restart local v0    # "estimatedTransfer":J
    :goto_0
    iget-wide v7, p0, Landroid/app/job/JobWorkItem;->mMinimumChunkBytes:J

    cmp-long v4, v7, v2

    if-eqz v4, :cond_3

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    cmp-long v4, v7, v0

    if-gtz v4, :cond_2

    goto :goto_1

    .line 236
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Minimum chunk size can\'t be greater than estimated network usage"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 239
    :cond_3
    :goto_1
    cmp-long v2, v7, v2

    if-eqz v2, :cond_5

    cmp-long v2, v7, v5

    if-lez v2, :cond_4

    goto :goto_2

    .line 240
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Minimum chunk size must be positive"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 242
    :cond_5
    :goto_2
    return-void
.end method

.method public whitelist getDeliveryCount()I
    .locals 1

    .line 158
    iget v0, p0, Landroid/app/job/JobWorkItem;->mDeliveryCount:I

    return v0
.end method

.method public whitelist getEstimatedNetworkDownloadBytes()J
    .locals 2

    .line 127
    iget-wide v0, p0, Landroid/app/job/JobWorkItem;->mNetworkDownloadBytes:J

    return-wide v0
.end method

.method public whitelist getEstimatedNetworkUploadBytes()J
    .locals 2

    .line 138
    iget-wide v0, p0, Landroid/app/job/JobWorkItem;->mNetworkUploadBytes:J

    return-wide v0
.end method

.method public greylist-max-o getGrants()Ljava/lang/Object;
    .locals 1

    .line 193
    iget-object v0, p0, Landroid/app/job/JobWorkItem;->mGrants:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist getIntent()Landroid/content/Intent;
    .locals 1

    .line 116
    iget-object v0, p0, Landroid/app/job/JobWorkItem;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist getMinimumNetworkChunkBytes()J
    .locals 2

    .line 148
    iget-wide v0, p0, Landroid/app/job/JobWorkItem;->mMinimumChunkBytes:J

    return-wide v0
.end method

.method public greylist-max-o getWorkId()I
    .locals 1

    .line 179
    iget v0, p0, Landroid/app/job/JobWorkItem;->mWorkId:I

    return v0
.end method

.method public greylist-max-o setGrants(Ljava/lang/Object;)V
    .locals 0
    .param p1, "grants"    # Ljava/lang/Object;

    .line 186
    iput-object p1, p0, Landroid/app/job/JobWorkItem;->mGrants:Ljava/lang/Object;

    .line 187
    return-void
.end method

.method public greylist-max-o setWorkId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 172
    iput p1, p0, Landroid/app/job/JobWorkItem;->mWorkId:I

    .line 173
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 198
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "JobWorkItem{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    iget v1, p0, Landroid/app/job/JobWorkItem;->mWorkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    const-string v1, " intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-object v1, p0, Landroid/app/job/JobWorkItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    iget-wide v1, p0, Landroid/app/job/JobWorkItem;->mNetworkDownloadBytes:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 203
    const-string v1, " downloadBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget-wide v1, p0, Landroid/app/job/JobWorkItem;->mNetworkDownloadBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 206
    :cond_0
    iget-wide v1, p0, Landroid/app/job/JobWorkItem;->mNetworkUploadBytes:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 207
    const-string v1, " uploadBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget-wide v1, p0, Landroid/app/job/JobWorkItem;->mNetworkUploadBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 210
    :cond_1
    iget-wide v1, p0, Landroid/app/job/JobWorkItem;->mMinimumChunkBytes:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 211
    const-string v1, " minimumChunkBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-wide v1, p0, Landroid/app/job/JobWorkItem;->mMinimumChunkBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 214
    :cond_2
    iget v1, p0, Landroid/app/job/JobWorkItem;->mDeliveryCount:I

    if-eqz v1, :cond_3

    .line 215
    const-string v1, " dcount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget v1, p0, Landroid/app/job/JobWorkItem;->mDeliveryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    :cond_3
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 249
    iget-object v0, p0, Landroid/app/job/JobWorkItem;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 250
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget-object v0, p0, Landroid/app/job/JobWorkItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    :goto_0
    iget-wide v0, p0, Landroid/app/job/JobWorkItem;->mNetworkDownloadBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 256
    iget-wide v0, p0, Landroid/app/job/JobWorkItem;->mNetworkUploadBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 257
    iget-wide v0, p0, Landroid/app/job/JobWorkItem;->mMinimumChunkBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 258
    iget v0, p0, Landroid/app/job/JobWorkItem;->mDeliveryCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    iget v0, p0, Landroid/app/job/JobWorkItem;->mWorkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    return-void
.end method
