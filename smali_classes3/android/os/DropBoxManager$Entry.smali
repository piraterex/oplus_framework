.class public Landroid/os/DropBoxManager$Entry;
.super Ljava/lang/Object;
.source "DropBoxManager.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DropBoxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/DropBoxManager$Entry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mData:[B

.field private final greylist-max-o mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final greylist-max-o mFlags:I

.field private final greylist-max-o mTag:Ljava/lang/String;

.field private final greylist-max-o mTimeMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 265
    new-instance v0, Landroid/os/DropBoxManager$Entry$1;

    invoke-direct {v0}, Landroid/os/DropBoxManager$Entry$1;-><init>()V

    sput-object v0, Landroid/os/DropBoxManager$Entry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "millis"    # J

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    if-eqz p1, :cond_0

    .line 132
    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    .line 133
    iput-wide p2, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    .line 135
    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 136
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    .line 137
    return-void

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tag == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;JLandroid/os/ParcelFileDescriptor;I)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "millis"    # J
    .param p4, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "flags"    # I

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    if-eqz p1, :cond_3

    .line 177
    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez p4, :cond_1

    move v1, v2

    :cond_1
    if-ne v0, v1, :cond_2

    .line 181
    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    .line 182
    iput-wide p2, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    .line 184
    iput-object p4, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 185
    iput p5, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    .line 186
    return-void

    .line 178
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tag == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;JLjava/io/File;I)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "millis"    # J
    .param p4, "data"    # Ljava/io/File;
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    if-eqz p1, :cond_1

    .line 195
    and-int/lit8 v0, p5, 0x1

    if-nez v0, :cond_0

    .line 197
    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    .line 198
    iput-wide p2, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    .line 200
    const/high16 v0, 0x10000000

    invoke-static {p4, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 201
    iput p5, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    .line 202
    return-void

    .line 195
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tag == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "millis"    # J
    .param p4, "text"    # Ljava/lang/String;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    if-eqz p1, :cond_1

    .line 143
    if-eqz p4, :cond_0

    .line 145
    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    .line 146
    iput-wide p2, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    .line 147
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 149
    const/4 v0, 0x2

    iput v0, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    .line 150
    return-void

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "text == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tag == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;J[BI)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "millis"    # J
    .param p4, "data"    # [B
    .param p5, "flags"    # I

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    if-eqz p1, :cond_3

    .line 159
    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez p4, :cond_1

    move v1, v2

    :cond_1
    if-ne v0, v1, :cond_2

    .line 163
    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    .line 164
    iput-wide p2, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    .line 165
    iput-object p4, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 167
    iput p5, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    .line 168
    return-void

    .line 160
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tag == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 1

    .line 206
    :try_start_0
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 207
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 281
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getFlags()I
    .locals 1

    .line 222
    iget v0, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    return v0
.end method

.method public whitelist getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    if-eqz v0, :cond_0

    .line 255
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v0, "is":Ljava/io/InputStream;
    goto :goto_0

    .line 256
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_0
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_2

    .line 257
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v1, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 261
    .restart local v0    # "is":Ljava/io/InputStream;
    :goto_0
    iget v1, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 262
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 261
    :goto_1
    return-object v1

    .line 259
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getTag()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getText(I)Ljava/lang/String;
    .locals 7
    .param p1, "maxBytes"    # I

    .line 230
    iget v0, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 231
    :cond_0
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/String;

    array-length v3, v0

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v1

    .line 233
    :cond_1
    const/4 v0, 0x0

    .line 235
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 236
    if-nez v0, :cond_3

    .line 247
    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 236
    :cond_2
    :goto_0
    return-object v1

    .line 237
    :cond_3
    :try_start_2
    new-array v3, p1, [B

    .line 238
    .local v3, "buf":[B
    const/4 v4, 0x0

    .line 239
    .local v4, "readBytes":I
    const/4 v5, 0x0

    .line 240
    .local v5, "n":I
    :goto_1
    if-ltz v5, :cond_4

    add-int v6, v4, v5

    move v4, v6

    if-ge v6, p1, :cond_4

    .line 241
    sub-int v6, p1, v4

    invoke-virtual {v0, v3, v4, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    move v5, v6

    goto :goto_1

    .line 243
    :cond_4
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3, v2, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    if-eqz v0, :cond_5

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 243
    :cond_5
    :goto_2
    return-object v6

    .line 247
    .end local v3    # "buf":[B
    .end local v4    # "readBytes":I
    .end local v5    # "n":I
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_6

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    .line 248
    :cond_6
    :goto_3
    throw v1

    .line 244
    :catch_3
    move-exception v2

    .line 245
    .local v2, "e":Ljava/io/IOException;
    nop

    .line 247
    if-eqz v0, :cond_7

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v3

    .line 245
    :cond_7
    :goto_4
    return-object v1
.end method

.method public whitelist getTimeMillis()J
    .locals 2

    .line 216
    iget-wide v0, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 285
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    iget-wide v0, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 287
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 288
    iget v0, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    and-int/lit8 v0, v0, -0x9

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 291
    :cond_0
    iget v0, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 294
    :goto_0
    return-void
.end method
