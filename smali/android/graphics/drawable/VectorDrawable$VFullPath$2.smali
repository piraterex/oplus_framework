.class Landroid/graphics/drawable/VectorDrawable$VFullPath$2;
.super Landroid/util/FloatProperty;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable$VFullPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 1811
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist get(Landroid/graphics/drawable/VectorDrawable$VFullPath;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Landroid/graphics/drawable/VectorDrawable$VFullPath;

    .line 1819
    invoke-virtual {p1}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getStrokeWidth()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1811
    check-cast p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$2;->get(Landroid/graphics/drawable/VectorDrawable$VFullPath;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setValue(Landroid/graphics/drawable/VectorDrawable$VFullPath;F)V
    .locals 0
    .param p1, "object"    # Landroid/graphics/drawable/VectorDrawable$VFullPath;
    .param p2, "value"    # F

    .line 1814
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->setStrokeWidth(F)V

    .line 1815
    return-void
.end method

.method public bridge synthetic whitelist setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1811
    check-cast p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable$VFullPath$2;->setValue(Landroid/graphics/drawable/VectorDrawable$VFullPath;F)V

    return-void
.end method
