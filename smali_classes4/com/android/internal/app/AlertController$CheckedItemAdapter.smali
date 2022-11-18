.class Lcom/android/internal/app/AlertController$CheckedItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mAlertParamsExt:Landroid/app/dialog/IAlertParamsExt;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmAlertParamsExt(Lcom/android/internal/app/AlertController$CheckedItemAdapter;Landroid/app/dialog/IAlertParamsExt;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/AlertController$CheckedItemAdapter;->mAlertParamsExt:Landroid/app/dialog/IAlertParamsExt;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I
    .param p4, "objects"    # [Ljava/lang/CharSequence;

    .line 1382
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 1378
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AlertController$CheckedItemAdapter;->mAlertParamsExt:Landroid/app/dialog/IAlertParamsExt;

    .line 1383
    return-void
.end method


# virtual methods
.method public whitelist getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 1392
    int-to-long v0, p1

    return-wide v0
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 1398
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1399
    .local v0, "superConvertView":Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/app/AlertController$CheckedItemAdapter;->mAlertParamsExt:Landroid/app/dialog/IAlertParamsExt;

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$CheckedItemAdapter;->getCount()I

    move-result v2

    invoke-interface {v1, v0, p1, v2}, Landroid/app/dialog/IAlertParamsExt;->getConvertView(Landroid/view/View;II)Landroid/view/View;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public whitelist hasStableIds()Z
    .locals 1

    .line 1387
    const/4 v0, 0x1

    return v0
.end method
