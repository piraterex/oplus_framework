.class final Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
.super Ljava/lang/Object;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DrawableFeatureState"
.end annotation


# instance fields
.field blacklist alpha:I

.field blacklist child:Landroid/graphics/drawable/Drawable;

.field blacklist cur:Landroid/graphics/drawable/Drawable;

.field blacklist curAlpha:I

.field blacklist def:Landroid/graphics/drawable/Drawable;

.field final blacklist featureId:I

.field blacklist local:Landroid/graphics/drawable/Drawable;

.field blacklist resid:I

.field blacklist uri:Landroid/net/Uri;


# direct methods
.method constructor blacklist <init>(I)V
    .locals 1
    .param p1, "_featureId"    # I

    .line 3375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3393
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    .line 3395
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->curAlpha:I

    .line 3376
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->featureId:I

    .line 3377
    return-void
.end method
