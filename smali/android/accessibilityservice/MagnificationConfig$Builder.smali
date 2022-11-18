.class public final Landroid/accessibilityservice/MagnificationConfig$Builder;
.super Ljava/lang/Object;
.source "MagnificationConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/MagnificationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCenterX:F

.field private blacklist mCenterY:F

.field private blacklist mMode:I

.field private blacklist mScale:F


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Landroid/accessibilityservice/MagnificationConfig$Builder;->mMode:I

    .line 169
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/accessibilityservice/MagnificationConfig$Builder;->mScale:F

    .line 170
    iput v0, p0, Landroid/accessibilityservice/MagnificationConfig$Builder;->mCenterX:F

    .line 171
    iput v0, p0, Landroid/accessibilityservice/MagnificationConfig$Builder;->mCenterY:F

    .line 177
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/accessibilityservice/MagnificationConfig;
    .locals 2

    .line 238
    new-instance v0, Landroid/accessibilityservice/MagnificationConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/accessibilityservice/MagnificationConfig;-><init>(Landroid/accessibilityservice/MagnificationConfig-IA;)V

    .line 239
    .local v0, "magnificationConfig":Landroid/accessibilityservice/MagnificationConfig;
    iget v1, p0, Landroid/accessibilityservice/MagnificationConfig$Builder;->mMode:I

    invoke-static {v0, v1}, Landroid/accessibilityservice/MagnificationConfig;->-$$Nest$fputmMode(Landroid/accessibilityservice/MagnificationConfig;I)V

    .line 240
    iget v1, p0, Landroid/accessibilityservice/MagnificationConfig$Builder;->mScale:F

    invoke-static {v0, v1}, Landroid/accessibilityservice/MagnificationConfig;->-$$Nest$fputmScale(Landroid/accessibilityservice/MagnificationConfig;F)V

    .line 241
    iget v1, p0, Landroid/accessibilityservice/MagnificationConfig$Builder;->mCenterX:F

    invoke-static {v0, v1}, Landroid/accessibilityservice/MagnificationConfig;->-$$Nest$fputmCenterX(Landroid/accessibilityservice/MagnificationConfig;F)V

    .line 242
    iget v1, p0, Landroid/accessibilityservice/MagnificationConfig$Builder;->mCenterY:F

    invoke-static {v0, v1}, Landroid/accessibilityservice/MagnificationConfig;->-$$Nest$fputmCenterY(Landroid/accessibilityservice/MagnificationConfig;F)V

    .line 243
    return-object v0
.end method

.method public whitelist setCenterX(F)Landroid/accessibilityservice/MagnificationConfig$Builder;
    .locals 0
    .param p1, "centerX"    # F

    .line 214
    iput p1, p0, Landroid/accessibilityservice/MagnificationConfig$Builder;->mCenterX:F

    .line 215
    return-object p0
.end method

.method public whitelist setCenterY(F)Landroid/accessibilityservice/MagnificationConfig$Builder;
    .locals 0
    .param p1, "centerY"    # F

    .line 229
    iput p1, p0, Landroid/accessibilityservice/MagnificationConfig$Builder;->mCenterY:F

    .line 230
    return-object p0
.end method

.method public whitelist setMode(I)Landroid/accessibilityservice/MagnificationConfig$Builder;
    .locals 0
    .param p1, "mode"    # I

    .line 187
    iput p1, p0, Landroid/accessibilityservice/MagnificationConfig$Builder;->mMode:I

    .line 188
    return-object p0
.end method

.method public whitelist setScale(F)Landroid/accessibilityservice/MagnificationConfig$Builder;
    .locals 0
    .param p1, "scale"    # F

    .line 199
    iput p1, p0, Landroid/accessibilityservice/MagnificationConfig$Builder;->mScale:F

    .line 200
    return-object p0
.end method
