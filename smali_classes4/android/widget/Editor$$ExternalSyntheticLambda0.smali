.class public final synthetic Landroid/widget/Editor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/widget/Editor;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/widget/Editor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/Editor$$ExternalSyntheticLambda0;->f$0:Landroid/widget/Editor;

    return-void
.end method


# virtual methods
.method public final whitelist onDismiss()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$$ExternalSyntheticLambda0;->f$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->lambda$startActionModeInternal$0$android-widget-Editor()V

    return-void
.end method
