.class Landroid/graphics/BitmapShader$BitmapShaderWrapper;
.super Ljava/lang/Object;
.source "BitmapShader.java"

# interfaces
.implements Landroid/graphics/IBitmapShaderWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/BitmapShader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapShaderWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/BitmapShader;


# direct methods
.method private constructor blacklist <init>(Landroid/graphics/BitmapShader;)V
    .locals 0

    .line 188
    iput-object p1, p0, Landroid/graphics/BitmapShader$BitmapShaderWrapper;->this$0:Landroid/graphics/BitmapShader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/BitmapShader;Landroid/graphics/BitmapShader$BitmapShaderWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/BitmapShader$BitmapShaderWrapper;-><init>(Landroid/graphics/BitmapShader;)V

    return-void
.end method


# virtual methods
.method public blacklist getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 191
    iget-object v0, p0, Landroid/graphics/BitmapShader$BitmapShaderWrapper;->this$0:Landroid/graphics/BitmapShader;

    iget-object v0, v0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method
