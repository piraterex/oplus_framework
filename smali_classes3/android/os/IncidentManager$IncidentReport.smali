.class public Landroid/os/IncidentManager$IncidentReport;
.super Ljava/lang/Object;
.source "IncidentManager.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IncidentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IncidentReport"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/IncidentManager$IncidentReport;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final blacklist mPrivacyPolicy:I

.field private final blacklist mTimestampNs:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 358
    new-instance v0, Landroid/os/IncidentManager$IncidentReport$1;

    invoke-direct {v0}, Landroid/os/IncidentManager$IncidentReport$1;-><init>()V

    sput-object v0, Landroid/os/IncidentManager$IncidentReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/IncidentManager$IncidentReport;->mTimestampNs:J

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/IncidentManager$IncidentReport;->mPrivacyPolicy:I

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/os/IncidentManager$IncidentReport;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    goto :goto_0

    .line 288
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/IncidentManager$IncidentReport;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 290
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 1

    .line 297
    :try_start_0
    iget-object v0, p0, Landroid/os/IncidentManager$IncidentReport;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/IncidentManager$IncidentReport;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :cond_0
    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    .line 303
    :goto_0
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 338
    iget-object v0, p0, Landroid/os/IncidentManager$IncidentReport;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    iget-object v0, p0, Landroid/os/IncidentManager$IncidentReport;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    .line 329
    const/4 v0, 0x0

    return-object v0

    .line 331
    :cond_0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v1, p0, Landroid/os/IncidentManager$IncidentReport;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object v0
.end method

.method public whitelist getPrivacyPolicy()J
    .locals 2

    .line 321
    iget v0, p0, Landroid/os/IncidentManager$IncidentReport;->mPrivacyPolicy:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist getTimestamp()J
    .locals 4

    .line 310
    iget-wide v0, p0, Landroid/os/IncidentManager$IncidentReport;->mTimestampNs:J

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 345
    iget-wide v0, p0, Landroid/os/IncidentManager$IncidentReport;->mTimestampNs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 346
    iget v0, p0, Landroid/os/IncidentManager$IncidentReport;->mPrivacyPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    iget-object v0, p0, Landroid/os/IncidentManager$IncidentReport;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 348
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    iget-object v0, p0, Landroid/os/IncidentManager$IncidentReport;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 351
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    :goto_0
    return-void
.end method
