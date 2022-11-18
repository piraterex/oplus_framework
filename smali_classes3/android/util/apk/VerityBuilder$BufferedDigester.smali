.class Landroid/util/apk/VerityBuilder$BufferedDigester;
.super Ljava/lang/Object;
.source "VerityBuilder.java"

# interfaces
.implements Landroid/util/apk/DataDigester;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/apk/VerityBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferedDigester"
.end annotation


# static fields
.field private static final blacklist BUFFER_SIZE:I = 0x1000


# instance fields
.field private blacklist mBytesDigestedSinceReset:I

.field private final blacklist mDigestBuffer:[B

.field private final blacklist mMd:Ljava/security/MessageDigest;

.field private final blacklist mOutput:Ljava/nio/ByteBuffer;

.field private final blacklist mSalt:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$mfillUpLastOutputChunk(Landroid/util/apk/VerityBuilder$BufferedDigester;)V
    .locals 0

    invoke-direct {p0}, Landroid/util/apk/VerityBuilder$BufferedDigester;->fillUpLastOutputChunk()V

    return-void
.end method

.method private constructor blacklist <init>([BLjava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "salt"    # [B
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mDigestBuffer:[B

    .line 196
    iput-object p1, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mSalt:[B

    .line 197
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mOutput:Ljava/nio/ByteBuffer;

    .line 198
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mMd:Ljava/security/MessageDigest;

    .line 199
    if-eqz p1, :cond_0

    .line 200
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 202
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mBytesDigestedSinceReset:I

    .line 203
    return-void
.end method

.method synthetic constructor blacklist <init>([BLjava/nio/ByteBuffer;Landroid/util/apk/VerityBuilder$BufferedDigester-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/util/apk/VerityBuilder$BufferedDigester;-><init>([BLjava/nio/ByteBuffer;)V

    return-void
.end method

.method private blacklist fillUpLastOutputChunk()V
    .locals 3

    .line 243
    iget-object v0, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mOutput:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    rem-int/lit16 v0, v0, 0x1000

    .line 244
    .local v0, "lastBlockSize":I
    if-nez v0, :cond_0

    .line 245
    return-void

    .line 247
    :cond_0
    iget-object v1, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mOutput:Ljava/nio/ByteBuffer;

    rsub-int v2, v0, 0x1000

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 248
    return-void
.end method


# virtual methods
.method public blacklist assertEmptyBuffer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    .line 237
    iget v0, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mBytesDigestedSinceReset:I

    if-nez v0, :cond_0

    .line 240
    return-void

    .line 238
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer is not empty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mBytesDigestedSinceReset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist consume(Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    .line 213
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 214
    .local v0, "offset":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 215
    .local v1, "remaining":I
    :goto_0
    if-lez v1, :cond_2

    .line 216
    iget v2, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mBytesDigestedSinceReset:I

    const/16 v3, 0x1000

    rsub-int v2, v2, 0x1000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 218
    .local v2, "allowance":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 219
    iget-object v4, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mMd:Ljava/security/MessageDigest;

    invoke-virtual {v4, p1}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 220
    add-int/2addr v0, v2

    .line 221
    sub-int/2addr v1, v2

    .line 222
    iget v4, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mBytesDigestedSinceReset:I

    add-int/2addr v4, v2

    iput v4, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mBytesDigestedSinceReset:I

    .line 224
    if-ne v4, v3, :cond_1

    .line 225
    iget-object v3, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mMd:Ljava/security/MessageDigest;

    iget-object v4, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mDigestBuffer:[B

    array-length v5, v4

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/security/MessageDigest;->digest([BII)I

    .line 226
    iget-object v3, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mOutput:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mDigestBuffer:[B

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 228
    iget-object v3, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mSalt:[B

    if-eqz v3, :cond_0

    .line 229
    iget-object v4, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mMd:Ljava/security/MessageDigest;

    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 231
    :cond_0
    iput v6, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mBytesDigestedSinceReset:I

    .line 233
    .end local v2    # "allowance":I
    :cond_1
    goto :goto_0

    .line 234
    :cond_2
    return-void
.end method
