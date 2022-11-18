.class public Landroid/widget/AppSecurityPermissions;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "grpName"    # Ljava/lang/CharSequence;
    .param p2, "description"    # Ljava/lang/CharSequence;
    .param p3, "dangerous"    # Z

    .line 42
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 44
    .local v0, "inflater":Landroid/view/LayoutInflater;
    if-eqz p3, :cond_0

    .line 45
    const v1, 0x1080351

    goto :goto_0

    :cond_0
    const v1, 0x1080562

    .line 44
    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 46
    .local v7, "icon":Landroid/graphics/drawable/Drawable;
    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Landroid/widget/AppSecurityPermissions;->getPermissionItemViewOld(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o getPermissionItemViewOld(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "grpName"    # Ljava/lang/CharSequence;
    .param p3, "permList"    # Ljava/lang/CharSequence;
    .param p4, "dangerous"    # Z
    .param p5, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 52
    const v0, 0x109003f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "permView":Landroid/view/View;
    const v1, 0x1020421

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 55
    .local v1, "permGrpView":Landroid/widget/TextView;
    const v2, 0x1020423

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 57
    .local v2, "permDescView":Landroid/widget/TextView;
    const v3, 0x102041d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 58
    .local v3, "imgView":Landroid/widget/ImageView;
    invoke-virtual {v3, p5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    if-eqz p2, :cond_0

    .line 60
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    :goto_0
    return-object v0
.end method
