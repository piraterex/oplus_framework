.class final Lcom/android/internal/widget/ColoredIconHelper;
.super Ljava/lang/Object;
.source "ColoredIconHelper.java"


# static fields
.field static final blacklist COLOR_INVALID:I = 0x1


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method static blacklist applyGrayTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;ZI)V
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "apply"    # Z
    .param p3, "originalColor"    # I

    .line 42
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 43
    return-void

    .line 45
    :cond_0
    if-eqz p2, :cond_2

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 48
    .local v1, "config":Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x20

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v4

    .line 50
    .local v0, "inNightMode":Z
    :goto_0
    invoke-static {p0, v4, v0}, Lcom/android/internal/util/ContrastColorUtil;->resolveColor(Landroid/content/Context;IZ)I

    move-result v2

    .line 51
    .local v2, "grey":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 52
    .end local v0    # "inNightMode":Z
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v2    # "grey":I
    goto :goto_1

    .line 54
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p3, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 56
    :goto_1
    return-void
.end method
