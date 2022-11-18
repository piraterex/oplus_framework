.class Landroid/widget/ListPopupWindow$PopupDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupDataSetObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/ListPopupWindow;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/ListPopupWindow;)V
    .locals 0

    .line 1317
    iput-object p1, p0, Landroid/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Landroid/widget/ListPopupWindow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$PopupDataSetObserver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Landroid/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public whitelist onChanged()V
    .locals 1

    .line 1320
    iget-object v0, p0, Landroid/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1322
    iget-object v0, p0, Landroid/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 1324
    :cond_0
    return-void
.end method

.method public whitelist onInvalidated()V
    .locals 1

    .line 1328
    iget-object v0, p0, Landroid/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1329
    return-void
.end method
