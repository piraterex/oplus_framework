.class Landroid/graphics/drawable/VectorDrawable$VectorDrawableState$1;
.super Landroid/util/FloatProperty;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 975
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist get(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;)Ljava/lang/Float;
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .line 983
    invoke-virtual {p1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getAlpha()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 975
    check-cast p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState$1;->get(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setValue(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;F)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    .param p2, "value"    # F

    .line 978
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->setAlpha(F)Z

    .line 979
    return-void
.end method

.method public bridge synthetic whitelist setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 975
    check-cast p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState$1;->setValue(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;F)V

    return-void
.end method
