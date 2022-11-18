.class public final synthetic Landroid/view/accessibility/AccessibilityManager$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/accessibility/AccessibilityManager$1;

.field public final synthetic blacklist f$1:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/accessibility/AccessibilityManager$1;Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityManager$1$$ExternalSyntheticLambda0;->f$0:Landroid/view/accessibility/AccessibilityManager$1;

    iput-object p2, p0, Landroid/view/accessibility/AccessibilityManager$1$$ExternalSyntheticLambda0;->f$1:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager$1$$ExternalSyntheticLambda0;->f$0:Landroid/view/accessibility/AccessibilityManager$1;

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager$1$$ExternalSyntheticLambda0;->f$1:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager$1;->lambda$notifyServicesStateChanged$0$android-view-accessibility-AccessibilityManager$1(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V

    return-void
.end method
