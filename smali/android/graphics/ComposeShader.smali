.class public Landroid/graphics/ComposeShader;
.super Landroid/graphics/Shader;
.source "ComposeShader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ComposeShader$ComposeShaderWrapper;
    }
.end annotation


# instance fields
.field private blacklist mComposeShaderWrapper:Landroid/graphics/ComposeShader$ComposeShaderWrapper;

.field private greylist-max-o mNativeInstanceShaderA:J

.field private greylist-max-o mNativeInstanceShaderB:J

.field private greylist-max-o mPorterDuffMode:I

.field greylist-max-o mShaderA:Landroid/graphics/Shader;

.field greylist-max-o mShaderB:Landroid/graphics/Shader;


# direct methods
.method private constructor greylist-max-o <init>(Landroid/graphics/Shader;Landroid/graphics/Shader;I)V
    .locals 2
    .param p1, "shaderA"    # Landroid/graphics/Shader;
    .param p2, "shaderB"    # Landroid/graphics/Shader;
    .param p3, "nativeMode"    # I

    .line 81
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    .line 116
    new-instance v0, Landroid/graphics/ComposeShader$ComposeShaderWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/ComposeShader$ComposeShaderWrapper;-><init>(Landroid/graphics/ComposeShader;Landroid/graphics/ComposeShader$ComposeShaderWrapper-IA;)V

    iput-object v0, p0, Landroid/graphics/ComposeShader;->mComposeShaderWrapper:Landroid/graphics/ComposeShader$ComposeShaderWrapper;

    .line 82
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 86
    iput-object p1, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    .line 87
    iput-object p2, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    .line 88
    iput p3, p0, Landroid/graphics/ComposeShader;->mPorterDuffMode:I

    .line 91
    const-class v0, Landroid/graphics/IShaderExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/IShaderExt;

    iput-object v0, p0, Landroid/graphics/ComposeShader;->mShaderExt:Landroid/graphics/IShaderExt;

    .line 93
    return-void

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Shader parameters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/BlendMode;)V
    .locals 1
    .param p1, "shaderA"    # Landroid/graphics/Shader;
    .param p2, "shaderB"    # Landroid/graphics/Shader;
    .param p3, "blendMode"    # Landroid/graphics/BlendMode;

    .line 78
    invoke-virtual {p3}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Xfermode;->porterDuffMode:I

    invoke-direct {p0, p1, p2, v0}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;I)V

    .line 79
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "shaderA"    # Landroid/graphics/Shader;
    .param p2, "shaderB"    # Landroid/graphics/Shader;
    .param p3, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 64
    iget v0, p3, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-direct {p0, p1, p2, v0}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;I)V

    .line 65
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/Xfermode;)V
    .locals 1
    .param p1, "shaderA"    # Landroid/graphics/Shader;
    .param p2, "shaderB"    # Landroid/graphics/Shader;
    .param p3, "mode"    # Landroid/graphics/Xfermode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    iget v0, p3, Landroid/graphics/Xfermode;->porterDuffMode:I

    invoke-direct {p0, p1, p2, v0}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;I)V

    .line 50
    return-void
.end method

.method private static native greylist-max-o nativeCreate(JJJI)J
.end method


# virtual methods
.method protected blacklist createNativeInstance(JZ)J
    .locals 8
    .param p1, "nativeMatrix"    # J
    .param p3, "filterFromPaint"    # Z

    .line 98
    iget-object v0, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    invoke-virtual {v0, p3}, Landroid/graphics/Shader;->getNativeInstance(Z)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/ComposeShader;->mNativeInstanceShaderA:J

    .line 99
    iget-object v0, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    invoke-virtual {v0, p3}, Landroid/graphics/Shader;->getNativeInstance(Z)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/ComposeShader;->mNativeInstanceShaderB:J

    .line 100
    iget-object v0, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    .line 101
    invoke-virtual {v0}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v3

    iget-object v0, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    invoke-virtual {v0}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v5

    iget v7, p0, Landroid/graphics/ComposeShader;->mPorterDuffMode:I

    .line 100
    move-wide v1, p1

    invoke-static/range {v1 .. v7}, Landroid/graphics/ComposeShader;->nativeCreate(JJJI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getWrapper()Landroid/graphics/IComposeShaderWrapper;
    .locals 1

    .line 120
    iget-object v0, p0, Landroid/graphics/ComposeShader;->mComposeShaderWrapper:Landroid/graphics/ComposeShader$ComposeShaderWrapper;

    return-object v0
.end method

.method protected blacklist shouldDiscardNativeInstance(Z)Z
    .locals 4
    .param p1, "filterFromPaint"    # Z

    .line 107
    iget-object v0, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    invoke-virtual {v0, p1}, Landroid/graphics/Shader;->getNativeInstance(Z)J

    move-result-wide v0

    iget-wide v2, p0, Landroid/graphics/ComposeShader;->mNativeInstanceShaderA:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    .line 108
    invoke-virtual {v0, p1}, Landroid/graphics/Shader;->getNativeInstance(Z)J

    move-result-wide v0

    iget-wide v2, p0, Landroid/graphics/ComposeShader;->mNativeInstanceShaderB:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 107
    :goto_1
    return v0
.end method
