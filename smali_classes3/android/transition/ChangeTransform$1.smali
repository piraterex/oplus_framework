.class Landroid/transition/ChangeTransform$1;
.super Landroid/util/Property;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/transition/ChangeTransform$PathAnimatorMatrix;",
        "[F>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;

    .line 68
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<[F>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    check-cast p1, Landroid/transition/ChangeTransform$PathAnimatorMatrix;

    invoke-virtual {p0, p1}, Landroid/transition/ChangeTransform$1;->get(Landroid/transition/ChangeTransform$PathAnimatorMatrix;)[F

    move-result-object p1

    return-object p1
.end method

.method public blacklist get(Landroid/transition/ChangeTransform$PathAnimatorMatrix;)[F
    .locals 1
    .param p1, "object"    # Landroid/transition/ChangeTransform$PathAnimatorMatrix;

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist set(Landroid/transition/ChangeTransform$PathAnimatorMatrix;[F)V
    .locals 0
    .param p1, "object"    # Landroid/transition/ChangeTransform$PathAnimatorMatrix;
    .param p2, "value"    # [F

    .line 76
    invoke-virtual {p1, p2}, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->setValues([F)V

    .line 77
    return-void
.end method

.method public bridge synthetic whitelist set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 68
    check-cast p1, Landroid/transition/ChangeTransform$PathAnimatorMatrix;

    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, Landroid/transition/ChangeTransform$1;->set(Landroid/transition/ChangeTransform$PathAnimatorMatrix;[F)V

    return-void
.end method
