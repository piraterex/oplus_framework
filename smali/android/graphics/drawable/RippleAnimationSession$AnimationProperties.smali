.class Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;
.super Ljava/lang/Object;
.source "RippleAnimationSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/RippleAnimationSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimationProperties"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FloatType:",
        "Ljava/lang/Object;",
        "PaintType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mColor:I

.field private blacklist mMaxRadius:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFloatType;"
        }
    .end annotation
.end field

.field private final blacklist mNoisePhase:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFloatType;"
        }
    .end annotation
.end field

.field private final blacklist mPaint:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TPaintType;"
        }
    .end annotation
.end field

.field private final blacklist mProgress:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFloatType;"
        }
    .end annotation
.end field

.field private final blacklist mShader:Landroid/graphics/drawable/RippleShader;

.field private blacklist mX:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFloatType;"
        }
    .end annotation
.end field

.field private blacklist mY:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFloatType;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILandroid/graphics/drawable/RippleShader;)V
    .locals 0
    .param p7, "color"    # I
    .param p8, "shader"    # Landroid/graphics/drawable/RippleShader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFloatType;TFloatType;TFloatType;TFloatType;TPaintType;TFloatType;I",
            "Landroid/graphics/drawable/RippleShader;",
            ")V"
        }
    .end annotation

    .line 314
    .local p0, "this":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<TFloatType;TPaintType;>;"
    .local p1, "x":Ljava/lang/Object;, "TFloatType;"
    .local p2, "y":Ljava/lang/Object;, "TFloatType;"
    .local p3, "maxRadius":Ljava/lang/Object;, "TFloatType;"
    .local p4, "noisePhase":Ljava/lang/Object;, "TFloatType;"
    .local p5, "paint":Ljava/lang/Object;, "TPaintType;"
    .local p6, "progress":Ljava/lang/Object;, "TFloatType;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput-object p2, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mY:Ljava/lang/Object;

    .line 316
    iput-object p1, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mX:Ljava/lang/Object;

    .line 317
    iput-object p3, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mMaxRadius:Ljava/lang/Object;

    .line 318
    iput-object p4, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mNoisePhase:Ljava/lang/Object;

    .line 319
    iput-object p5, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mPaint:Ljava/lang/Object;

    .line 320
    iput-object p8, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mShader:Landroid/graphics/drawable/RippleShader;

    .line 321
    iput-object p6, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mProgress:Ljava/lang/Object;

    .line 322
    iput p7, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mColor:I

    .line 323
    return-void
.end method


# virtual methods
.method blacklist getColor()I
    .locals 1

    .line 363
    .local p0, "this":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<TFloatType;TPaintType;>;"
    iget v0, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mColor:I

    return v0
.end method

.method blacklist getMaxRadius()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFloatType;"
        }
    .end annotation

    .line 347
    .local p0, "this":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<TFloatType;TPaintType;>;"
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mMaxRadius:Ljava/lang/Object;

    return-object v0
.end method

.method blacklist getNoisePhase()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFloatType;"
        }
    .end annotation

    .line 359
    .local p0, "this":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<TFloatType;TPaintType;>;"
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mNoisePhase:Ljava/lang/Object;

    return-object v0
.end method

.method blacklist getPaint()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPaintType;"
        }
    .end annotation

    .line 351
    .local p0, "this":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<TFloatType;TPaintType;>;"
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mPaint:Ljava/lang/Object;

    return-object v0
.end method

.method blacklist getProgress()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFloatType;"
        }
    .end annotation

    .line 326
    .local p0, "this":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<TFloatType;TPaintType;>;"
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mProgress:Ljava/lang/Object;

    return-object v0
.end method

.method blacklist getShader()Landroid/graphics/drawable/RippleShader;
    .locals 1

    .line 355
    .local p0, "this":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<TFloatType;TPaintType;>;"
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mShader:Landroid/graphics/drawable/RippleShader;

    return-object v0
.end method

.method blacklist getX()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFloatType;"
        }
    .end annotation

    .line 339
    .local p0, "this":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<TFloatType;TPaintType;>;"
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mX:Ljava/lang/Object;

    return-object v0
.end method

.method blacklist getY()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFloatType;"
        }
    .end annotation

    .line 343
    .local p0, "this":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<TFloatType;TPaintType;>;"
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mY:Ljava/lang/Object;

    return-object v0
.end method

.method blacklist setOrigin(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFloatType;TFloatType;)V"
        }
    .end annotation

    .line 334
    .local p0, "this":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<TFloatType;TPaintType;>;"
    .local p1, "x":Ljava/lang/Object;, "TFloatType;"
    .local p2, "y":Ljava/lang/Object;, "TFloatType;"
    iput-object p1, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mX:Ljava/lang/Object;

    .line 335
    iput-object p2, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mY:Ljava/lang/Object;

    .line 336
    return-void
.end method

.method blacklist setRadius(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFloatType;)V"
        }
    .end annotation

    .line 330
    .local p0, "this":Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;, "Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties<TFloatType;TPaintType;>;"
    .local p1, "radius":Ljava/lang/Object;, "TFloatType;"
    iput-object p1, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mMaxRadius:Ljava/lang/Object;

    .line 331
    return-void
.end method
