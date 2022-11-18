.class Landroid/graphics/drawable/VectorDrawable$VFullPath$3;
.super Landroid/util/IntProperty;
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
        "Landroid/util/IntProperty<",
        "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 1824
    invoke-direct {p0, p1}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist get(Landroid/graphics/drawable/VectorDrawable$VFullPath;)Ljava/lang/Integer;
    .locals 1
    .param p1, "object"    # Landroid/graphics/drawable/VectorDrawable$VFullPath;

    .line 1832
    invoke-virtual {p1}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getStrokeColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1824
    check-cast p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$3;->get(Landroid/graphics/drawable/VectorDrawable$VFullPath;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setValue(Landroid/graphics/drawable/VectorDrawable$VFullPath;I)V
    .locals 0
    .param p1, "object"    # Landroid/graphics/drawable/VectorDrawable$VFullPath;
    .param p2, "value"    # I

    .line 1827
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->setStrokeColor(I)V

    .line 1828
    return-void
.end method

.method public bridge synthetic whitelist setValue(Ljava/lang/Object;I)V
    .locals 0

    .line 1824
    check-cast p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable$VFullPath$3;->setValue(Landroid/graphics/drawable/VectorDrawable$VFullPath;I)V

    return-void
.end method
