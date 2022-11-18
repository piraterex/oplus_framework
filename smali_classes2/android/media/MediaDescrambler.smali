.class public final Landroid/media/MediaDescrambler;
.super Ljava/lang/Object;
.source "MediaDescrambler.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final whitelist SCRAMBLE_CONTROL_EVEN_KEY:B = 0x2t

.field public static final whitelist SCRAMBLE_CONTROL_ODD_KEY:B = 0x3t

.field public static final whitelist SCRAMBLE_CONTROL_RESERVED:B = 0x1t

.field public static final whitelist SCRAMBLE_CONTROL_UNSCRAMBLED:B = 0x0t

.field public static final whitelist SCRAMBLE_FLAG_PES_HEADER:B = 0x1t

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MediaDescrambler"


# instance fields
.field private greylist-max-o mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;

.field private greylist-max-o mNativeContext:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 254
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 255
    invoke-static {}, Landroid/media/MediaDescrambler;->native_init()V

    .line 256
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .locals 5
    .param p1, "CA_system_id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException$UnsupportedCasException;
        }
    .end annotation

    .line 62
    const-string v0, "Unsupported CA_system_id "

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    :try_start_0
    invoke-static {}, Landroid/media/MediaCas;->getService()Landroid/hardware/cas/V1_0/IMediaCasService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/hardware/cas/V1_0/IMediaCasService;->createDescrambler(I)Landroid/hardware/cas/V1_0/IDescramblerBase;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    if-eqz v1, :cond_0

    .line 73
    iget-object v0, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;

    invoke-interface {v0}, Landroid/hardware/cas/V1_0/IDescramblerBase;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaDescrambler;->native_setup(Landroid/os/IHwBinder;)V

    .line 74
    return-void

    .line 70
    :cond_0
    new-instance v1, Landroid/media/MediaCasException$UnsupportedCasException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "MediaDescrambler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create descrambler: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .end local v1    # "e":Ljava/lang/Exception;
    nop

    .line 70
    new-instance v1, Landroid/media/MediaCasException$UnsupportedCasException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :goto_0
    iget-object v2, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;

    if-nez v2, :cond_1

    .line 70
    new-instance v1, Landroid/media/MediaCasException$UnsupportedCasException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_1
    throw v1
.end method

.method private final greylist-max-o cleanupAndRethrowIllegalState()V
    .locals 1

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;

    .line 52
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private final native greylist-max-o native_descramble(BBI[I[ILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method private static final native greylist-max-o native_init()V
.end method

.method private final native greylist-max-o native_release()V
.end method

.method private final native greylist-max-o native_setup(Landroid/os/IHwBinder;)V
.end method

.method private final greylist-max-o validateInternalStates()V
    .locals 1

    .line 45
    iget-object v0, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;

    if-eqz v0, :cond_0

    .line 48
    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 2

    .line 228
    iget-object v0, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;

    if-eqz v0, :cond_0

    .line 230
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Landroid/hardware/cas/V1_0/IDescramblerBase;->release()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 233
    :catchall_0
    move-exception v0

    iput-object v1, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;

    .line 234
    throw v0

    .line 231
    :catch_0
    move-exception v0

    .line 233
    :goto_0
    iput-object v1, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;

    .line 236
    :cond_0
    invoke-direct {p0}, Landroid/media/MediaDescrambler;->native_release()V

    .line 237
    return-void
.end method

.method public final whitelist descramble(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$CryptoInfo;)I
    .locals 15
    .param p1, "srcBuf"    # Ljava/nio/ByteBuffer;
    .param p2, "dstBuf"    # Ljava/nio/ByteBuffer;
    .param p3, "cryptoInfo"    # Landroid/media/MediaCodec$CryptoInfo;

    .line 187
    move-object/from16 v1, p3

    invoke-direct {p0}, Landroid/media/MediaDescrambler;->validateInternalStates()V

    .line 189
    iget v0, v1, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    if-lez v0, :cond_7

    .line 192
    iget-object v0, v1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v0, :cond_1

    iget-object v0, v1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid CryptoInfo: clearData and encryptedData size arrays are both null!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_1
    :goto_0
    iget-object v0, v1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-eqz v0, :cond_3

    iget-object v0, v1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    array-length v0, v0

    iget v2, v1, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    if-lt v0, v2, :cond_2

    goto :goto_1

    .line 198
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid CryptoInfo: numBytesOfClearData is too small!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_3
    :goto_1
    iget-object v0, v1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    if-eqz v0, :cond_5

    iget-object v0, v1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    array-length v0, v0

    iget v2, v1, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    if-lt v0, v2, :cond_4

    goto :goto_2

    .line 202
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid CryptoInfo: numBytesOfEncryptedData is too small!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_5
    :goto_2
    iget-object v0, v1, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    if-eqz v0, :cond_6

    iget-object v0, v1, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    array-length v0, v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_6

    .line 210
    :try_start_0
    iget-object v0, v1, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    const/4 v2, 0x0

    aget-byte v4, v0, v2

    iget-object v0, v1, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    const/4 v2, 0x1

    aget-byte v5, v0, v2

    iget v6, v1, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    iget-object v7, v1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    iget-object v8, v1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 216
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    .line 217
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v14

    .line 210
    move-object v3, p0

    move-object/from16 v9, p1

    move-object/from16 v12, p2

    invoke-direct/range {v3 .. v14}, Landroid/media/MediaDescrambler;->native_descramble(BBI[I[ILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/media/MediaDescrambler;->cleanupAndRethrowIllegalState()V

    goto :goto_3

    .line 218
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 219
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v2, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/MediaCasStateException;->throwExceptionIfNeeded(ILjava/lang/String;)V

    .line 222
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    nop

    .line 223
    :goto_3
    const/4 v0, -0x1

    return v0

    .line 205
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid CryptoInfo: key array is invalid!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid CryptoInfo: invalid numSubSamples="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .locals 0

    .line 241
    invoke-virtual {p0}, Landroid/media/MediaDescrambler;->close()V

    .line 242
    return-void
.end method

.method greylist-max-o getBinder()Landroid/os/IHwBinder;
    .locals 1

    .line 77
    invoke-direct {p0}, Landroid/media/MediaDescrambler;->validateInternalStates()V

    .line 79
    iget-object v0, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;

    invoke-interface {v0}, Landroid/hardware/cas/V1_0/IDescramblerBase;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist requiresSecureDecoderComponent(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mime"    # Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Landroid/media/MediaDescrambler;->validateInternalStates()V

    .line 94
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;

    invoke-interface {v0, p1}, Landroid/hardware/cas/V1_0/IDescramblerBase;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/media/MediaDescrambler;->cleanupAndRethrowIllegalState()V

    .line 98
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x1

    return v0
.end method

.method public final whitelist setMediaCasSession(Landroid/media/MediaCas$Session;)V
    .locals 2
    .param p1, "session"    # Landroid/media/MediaCas$Session;

    .line 117
    invoke-direct {p0}, Landroid/media/MediaDescrambler;->validateInternalStates()V

    .line 120
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;

    iget-object v1, p1, Landroid/media/MediaCas$Session;->mSessionId:Ljava/util/ArrayList;

    .line 121
    invoke-interface {v0, v1}, Landroid/hardware/cas/V1_0/IDescramblerBase;->setMediaCasSession(Ljava/util/ArrayList;)I

    move-result v0

    .line 120
    invoke-static {v0}, Landroid/media/MediaCasStateException;->throwExceptionIfNeeded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/media/MediaDescrambler;->cleanupAndRethrowIllegalState()V

    .line 125
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
