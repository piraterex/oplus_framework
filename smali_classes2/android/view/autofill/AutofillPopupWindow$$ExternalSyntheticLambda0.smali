.class public final synthetic Landroid/view/autofill/AutofillPopupWindow$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# instance fields
.field public final synthetic blacklist f$0:[I


# direct methods
.method public synthetic constructor blacklist <init>([I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/autofill/AutofillPopupWindow$$ExternalSyntheticLambda0;->f$0:[I

    return-void
.end method


# virtual methods
.method public final whitelist onScrollChange(Landroid/view/View;IIII)V
    .locals 6

    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$$ExternalSyntheticLambda0;->f$0:[I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroid/view/autofill/AutofillPopupWindow;->lambda$update$0([ILandroid/view/View;IIII)V

    return-void
.end method
