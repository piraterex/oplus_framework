.class Landroid/view/View$VisibilityChangeForAutofillHandler;
.super Landroid/os/Handler;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisibilityChangeForAutofillHandler"
.end annotation


# instance fields
.field private final greylist-max-o mAfm:Landroid/view/autofill/AutofillManager;

.field private final greylist-max-o mView:Landroid/view/View;


# direct methods
.method private constructor greylist-max-o <init>(Landroid/view/autofill/AutofillManager;Landroid/view/View;)V
    .locals 0
    .param p1, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p2, "view"    # Landroid/view/View;

    .line 29988
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 29989
    iput-object p1, p0, Landroid/view/View$VisibilityChangeForAutofillHandler;->mAfm:Landroid/view/autofill/AutofillManager;

    .line 29990
    iput-object p2, p0, Landroid/view/View$VisibilityChangeForAutofillHandler;->mView:Landroid/view/View;

    .line 29991
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/autofill/AutofillManager;Landroid/view/View;Landroid/view/View$VisibilityChangeForAutofillHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View$VisibilityChangeForAutofillHandler;-><init>(Landroid/view/autofill/AutofillManager;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 29995
    iget-object v0, p0, Landroid/view/View$VisibilityChangeForAutofillHandler;->mAfm:Landroid/view/autofill/AutofillManager;

    iget-object v1, p0, Landroid/view/View$VisibilityChangeForAutofillHandler;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/autofill/AutofillManager;->notifyViewVisibilityChanged(Landroid/view/View;Z)V

    .line 29996
    return-void
.end method
