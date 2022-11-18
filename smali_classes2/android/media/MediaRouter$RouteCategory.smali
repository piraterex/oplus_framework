.class public Landroid/media/MediaRouter$RouteCategory;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RouteCategory"
.end annotation


# instance fields
.field final greylist-max-o mGroupable:Z

.field greylist-max-o mIsSystem:Z

.field greylist-max-o mName:Ljava/lang/CharSequence;

.field greylist-max-o mNameResId:I

.field greylist-max-o mTypes:I


# direct methods
.method constructor greylist-max-o <init>(IIZ)V
    .locals 0
    .param p1, "nameResId"    # I
    .param p2, "types"    # I
    .param p3, "groupable"    # Z

    .line 2865
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2866
    iput p1, p0, Landroid/media/MediaRouter$RouteCategory;->mNameResId:I

    .line 2867
    iput p2, p0, Landroid/media/MediaRouter$RouteCategory;->mTypes:I

    .line 2868
    iput-boolean p3, p0, Landroid/media/MediaRouter$RouteCategory;->mGroupable:Z

    .line 2869
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/CharSequence;IZ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "types"    # I
    .param p3, "groupable"    # Z

    .line 2859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2860
    iput-object p1, p0, Landroid/media/MediaRouter$RouteCategory;->mName:Ljava/lang/CharSequence;

    .line 2861
    iput p2, p0, Landroid/media/MediaRouter$RouteCategory;->mTypes:I

    .line 2862
    iput-boolean p3, p0, Landroid/media/MediaRouter$RouteCategory;->mGroupable:Z

    .line 2863
    return-void
.end method


# virtual methods
.method public whitelist getName()Ljava/lang/CharSequence;
    .locals 1

    .line 2875
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$RouteCategory;->getName(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 2885
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$RouteCategory;->getName(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getName(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 2889
    iget v0, p0, Landroid/media/MediaRouter$RouteCategory;->mNameResId:I

    if-eqz v0, :cond_0

    .line 2890
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 2892
    :cond_0
    iget-object v0, p0, Landroid/media/MediaRouter$RouteCategory;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getRoutes(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRouter$RouteInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation

    .line 2909
    .local p1, "out":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRouter$RouteInfo;>;"
    if-nez p1, :cond_0

    .line 2910
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p1, v0

    goto :goto_0

    .line 2912
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2915
    :goto_0
    invoke-static {}, Landroid/media/MediaRouter;->getRouteCountStatic()I

    move-result v0

    .line 2916
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 2917
    invoke-static {v1}, Landroid/media/MediaRouter;->getRouteAtStatic(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    .line 2918
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    iget-object v3, v2, Landroid/media/MediaRouter$RouteInfo;->mCategory:Landroid/media/MediaRouter$RouteCategory;

    if-ne v3, p0, :cond_1

    .line 2919
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2916
    .end local v2    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2922
    .end local v1    # "i":I
    :cond_2
    return-object p1
.end method

.method public whitelist getSupportedTypes()I
    .locals 1

    .line 2929
    iget v0, p0, Landroid/media/MediaRouter$RouteCategory;->mTypes:I

    return v0
.end method

.method public whitelist isGroupable()Z
    .locals 1

    .line 2941
    iget-boolean v0, p0, Landroid/media/MediaRouter$RouteCategory;->mGroupable:Z

    return v0
.end method

.method public greylist-max-o isSystem()Z
    .locals 1

    .line 2949
    iget-boolean v0, p0, Landroid/media/MediaRouter$RouteCategory;->mIsSystem:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 2954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RouteCategory{ name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteCategory;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " types="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/MediaRouter$RouteCategory;->mTypes:I

    invoke-static {v1}, Landroid/media/MediaRouter;->typesToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " groupable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/MediaRouter$RouteCategory;->mGroupable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
