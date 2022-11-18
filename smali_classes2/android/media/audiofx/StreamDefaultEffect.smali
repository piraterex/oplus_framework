.class public Landroid/media/audiofx/StreamDefaultEffect;
.super Landroid/media/audiofx/DefaultEffect;
.source "StreamDefaultEffect.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "StreamDefaultEffect-JAVA"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 33
    const-string v0, "audioeffect_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/UUID;Ljava/util/UUID;II)V
    .locals 8
    .param p1, "type"    # Ljava/util/UUID;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "priority"    # I
    .param p4, "streamUsage"    # I

    .line 63
    invoke-direct {p0}, Landroid/media/audiofx/DefaultEffect;-><init>()V

    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 65
    .local v0, "id":[I
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 65
    move-object v1, p0

    move v4, p3

    move v5, p4

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Landroid/media/audiofx/StreamDefaultEffect;->native_setup(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;[I)I

    move-result v1

    .line 71
    .local v1, "initResult":I
    if-eqz v1, :cond_0

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " when initializing StreamDefaultEffect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StreamDefaultEffect-JAVA"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    packed-switch v1, :pswitch_data_0

    .line 81
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot initialize effect engine for type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream usage, type uuid, or implementation uuid not supported."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :pswitch_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Effect library not loaded"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_0
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, p0, Landroid/media/audiofx/StreamDefaultEffect;->mId:I

    .line 88
    return-void

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final native blacklist native_release(I)V
.end method

.method private final native blacklist native_setup(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;[I)I
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .locals 0

    .line 102
    invoke-virtual {p0}, Landroid/media/audiofx/StreamDefaultEffect;->release()V

    .line 103
    return-void
.end method

.method public blacklist release()V
    .locals 1

    .line 97
    iget v0, p0, Landroid/media/audiofx/StreamDefaultEffect;->mId:I

    invoke-direct {p0, v0}, Landroid/media/audiofx/StreamDefaultEffect;->native_release(I)V

    .line 98
    return-void
.end method
