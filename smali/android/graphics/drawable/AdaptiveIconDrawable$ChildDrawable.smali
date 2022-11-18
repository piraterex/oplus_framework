.class Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
.super Ljava/lang/Object;
.source "AdaptiveIconDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AdaptiveIconDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChildDrawable"
.end annotation


# instance fields
.field public greylist-max-o mDensity:I

.field public greylist-max-o mDrawable:Landroid/graphics/drawable/Drawable;

.field public greylist-max-o mThemeAttrs:[I


# direct methods
.method constructor greylist-max-o <init>(I)V
    .locals 1
    .param p1, "density"    # I

    .line 960
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 958
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDensity:I

    .line 961
    iput p1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDensity:I

    .line 962
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;Landroid/graphics/drawable/AdaptiveIconDrawable;Landroid/content/res/Resources;)V
    .locals 4
    .param p1, "orig"    # Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    .param p2, "owner"    # Landroid/graphics/drawable/AdaptiveIconDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .line 965
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 958
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDensity:I

    .line 967
    iget-object v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 969
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 970
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 971
    .local v1, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v1, :cond_0

    .line 972
    move-object v2, v0

    .local v2, "clone":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 973
    .end local v2    # "clone":Landroid/graphics/drawable/Drawable;
    :cond_0
    if-eqz p3, :cond_1

    .line 974
    invoke-virtual {v1, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .restart local v2    # "clone":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 976
    .end local v2    # "clone":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 978
    .restart local v2    # "clone":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 979
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 980
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 981
    .end local v1    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    goto :goto_1

    .line 982
    .end local v2    # "clone":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v2, 0x0

    .line 985
    .restart local v2    # "clone":Landroid/graphics/drawable/Drawable;
    :goto_1
    iput-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 986
    iget-object v1, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mThemeAttrs:[I

    iput-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mThemeAttrs:[I

    .line 988
    iget v1, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDensity:I

    invoke-static {p3, v1}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDensity:I

    .line 989
    return-void
.end method


# virtual methods
.method public greylist-max-o canApplyTheme()Z
    .locals 1

    .line 992
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mThemeAttrs:[I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 993
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 992
    :goto_1
    return v0
.end method

.method public final greylist-max-o setDensity(I)V
    .locals 1
    .param p1, "targetDensity"    # I

    .line 997
    iget v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDensity:I

    if-eq v0, p1, :cond_0

    .line 998
    iput p1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDensity:I

    .line 1000
    :cond_0
    return-void
.end method
