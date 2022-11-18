.class public final synthetic Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

.field public final synthetic blacklist f$1:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    iput-object p2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$$ExternalSyntheticLambda2;->f$1:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    return-void
.end method


# virtual methods
.method public final whitelist onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$$ExternalSyntheticLambda2;->f$1:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->lambda$createOverflowPanel$2$com-android-internal-widget-floatingtoolbar-LocalFloatingToolbarPopup(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
