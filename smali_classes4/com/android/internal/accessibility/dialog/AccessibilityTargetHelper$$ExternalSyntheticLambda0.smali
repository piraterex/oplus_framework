.class public final synthetic Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/accessibility/dialog/AccessibilityTarget;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/accessibility/dialog/AccessibilityTarget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    check-cast p1, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    invoke-static {v0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->lambda$getAccessibilityFilteredTargets$0(Lcom/android/internal/accessibility/dialog/AccessibilityTarget;Lcom/android/internal/accessibility/dialog/AccessibilityTarget;)Z

    move-result p1

    return p1
.end method
