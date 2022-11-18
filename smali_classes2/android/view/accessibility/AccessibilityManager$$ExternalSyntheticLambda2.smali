.class public final synthetic Landroid/view/accessibility/AccessibilityManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;

.field public final synthetic blacklist f$1:Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityManager$$ExternalSyntheticLambda2;->f$0:Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;

    iput-boolean p2, p0, Landroid/view/accessibility/AccessibilityManager$$ExternalSyntheticLambda2;->f$1:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager$$ExternalSyntheticLambda2;->f$0:Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;

    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager$$ExternalSyntheticLambda2;->f$1:Z

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->lambda$notifyHighTextContrastStateChanged$2(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;Z)V

    return-void
.end method
