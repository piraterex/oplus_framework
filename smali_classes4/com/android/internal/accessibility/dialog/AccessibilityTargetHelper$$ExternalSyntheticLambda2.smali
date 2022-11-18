.class public final synthetic Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;

.field public final synthetic blacklist f$1:Landroid/view/View$OnClickListener;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;

    iput-object p2, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper$$ExternalSyntheticLambda2;->f$1:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final whitelist onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;

    iget-object v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper$$ExternalSyntheticLambda2;->f$1:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->lambda$createEnableDialogContentView$2(Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method
