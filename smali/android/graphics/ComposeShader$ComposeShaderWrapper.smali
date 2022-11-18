.class Landroid/graphics/ComposeShader$ComposeShaderWrapper;
.super Ljava/lang/Object;
.source "ComposeShader.java"

# interfaces
.implements Landroid/graphics/IComposeShaderWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ComposeShader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComposeShaderWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/ComposeShader;


# direct methods
.method private constructor blacklist <init>(Landroid/graphics/ComposeShader;)V
    .locals 0

    .line 123
    iput-object p1, p0, Landroid/graphics/ComposeShader$ComposeShaderWrapper;->this$0:Landroid/graphics/ComposeShader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/ComposeShader;Landroid/graphics/ComposeShader$ComposeShaderWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/ComposeShader$ComposeShaderWrapper;-><init>(Landroid/graphics/ComposeShader;)V

    return-void
.end method


# virtual methods
.method public blacklist getShaderA()Landroid/graphics/Shader;
    .locals 1

    .line 126
    iget-object v0, p0, Landroid/graphics/ComposeShader$ComposeShaderWrapper;->this$0:Landroid/graphics/ComposeShader;

    iget-object v0, v0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    return-object v0
.end method

.method public blacklist getShaderB()Landroid/graphics/Shader;
    .locals 1

    .line 130
    iget-object v0, p0, Landroid/graphics/ComposeShader$ComposeShaderWrapper;->this$0:Landroid/graphics/ComposeShader;

    iget-object v0, v0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    return-object v0
.end method
