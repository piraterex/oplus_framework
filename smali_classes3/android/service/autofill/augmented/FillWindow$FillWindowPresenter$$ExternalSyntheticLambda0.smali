.class public final synthetic Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/service/autofill/augmented/FillWindow;

    check-cast p2, Landroid/view/WindowManager$LayoutParams;

    invoke-static {p1, p2}, Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter;->lambda$show$0(Ljava/lang/Object;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
