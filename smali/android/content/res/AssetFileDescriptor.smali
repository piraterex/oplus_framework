.class public Landroid/content/res/AssetFileDescriptor;
.super Ljava/lang/Object;
.source "AssetFileDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;,
        Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/res/AssetFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist UNKNOWN_LENGTH:J = -0x1L


# instance fields
.field private final greylist-max-o mExtras:Landroid/os/Bundle;

.field private final greylist mFd:Landroid/os/ParcelFileDescriptor;

.field private final greylist mLength:J

.field private final greylist mStartOffset:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 373
    new-instance v0, Landroid/content/res/AssetFileDescriptor$1;

    invoke-direct {v0}, Landroid/content/res/AssetFileDescriptor$1;-><init>()V

    sput-object v0, Landroid/content/res/AssetFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor;->mStartOffset:J

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor;->mLength:J

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mExtras:Landroid/os/Bundle;

    goto :goto_0

    .line 369
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mExtras:Landroid/os/Bundle;

    .line 371
    :goto_0
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/ParcelFileDescriptor;JJ)V
    .locals 7
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "startOffset"    # J
    .param p4, "length"    # J

    .line 63
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJLandroid/os/Bundle;)V

    .line 64
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/ParcelFileDescriptor;JJLandroid/os/Bundle;)V
    .locals 3
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "startOffset"    # J
    .param p4, "length"    # J
    .param p6, "extras"    # Landroid/os/Bundle;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    if-eqz p1, :cond_2

    .line 82
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-gez v2, :cond_1

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "startOffset must be 0 when using UNKNOWN_LENGTH"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    .line 87
    iput-wide p2, p0, Landroid/content/res/AssetFileDescriptor;->mStartOffset:J

    .line 88
    iput-wide p4, p0, Landroid/content/res/AssetFileDescriptor;->mLength:J

    .line 89
    iput-object p6, p0, Landroid/content/res/AssetFileDescriptor;->mExtras:Landroid/os/Bundle;

    .line 90
    return-void

    .line 80
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fd must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 161
    return-void
.end method

.method public whitelist createInputStream()Ljava/io/FileInputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor;->mLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 173
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v1, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object v0

    .line 175
    :cond_0
    new-instance v0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, p0}, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    return-object v0
.end method

.method public whitelist createOutputStream()Ljava/io/FileOutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor;->mLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 188
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v1, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object v0

    .line 190
    :cond_0
    new-instance v0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v0, p0}, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 346
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->describeContents()I

    move-result v0

    return v0
.end method

.method public whitelist getDeclaredLength()J
    .locals 2

    .line 152
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor;->mLength:J

    return-wide v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    .line 121
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .line 106
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLength()J
    .locals 5

    .line 136
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor;->mLength:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 137
    return-wide v0

    .line 139
    :cond_0
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v0

    .line 140
    .local v0, "len":J
    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    move-wide v2, v0

    goto :goto_0

    :cond_1
    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2
.end method

.method public whitelist getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 98
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public whitelist getStartOffset()J
    .locals 2

    .line 113
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor;->mStartOffset:J

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{AssetFileDescriptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/content/res/AssetFileDescriptor;->mStartOffset:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/content/res/AssetFileDescriptor;->mLength:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 351
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 352
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor;->mStartOffset:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 353
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor;->mLength:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 354
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 355
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto :goto_0

    .line 358
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    :goto_0
    return-void
.end method
