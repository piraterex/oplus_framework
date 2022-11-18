.class public interface abstract Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelViewHelperExt;
.super Ljava/lang/Object;
.source "IOverflowPanelViewHelperExt.java"


# static fields
.field public static final blacklist DEFAULT:Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelViewHelperExt;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelViewHelperExt$1;

    invoke-direct {v0}, Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelViewHelperExt$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelViewHelperExt;->DEFAULT:Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelViewHelperExt;

    return-void
.end method


# virtual methods
.method public blacklist hookGetSidePaddingRes(I)I
    .locals 0
    .param p1, "defaultValue"    # I

    .line 40
    return p1
.end method

.method public blacklist hookGetView(Landroid/view/View;II)V
    .locals 0
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "sidePadding"    # I
    .param p3, "minimumWidth"    # I

    .line 37
    return-void
.end method

.method public blacklist setConvertViewPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 31
    return-void
.end method

.method public blacklist setOverflowDirection(Z)V
    .locals 0
    .param p1, "upward"    # Z

    .line 34
    return-void
.end method

.method public blacklist setOverflowMenuCount(I)V
    .locals 0
    .param p1, "count"    # I

    .line 28
    return-void
.end method
