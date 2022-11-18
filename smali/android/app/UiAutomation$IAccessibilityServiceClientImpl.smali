.class Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;
.super Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;
.source "UiAutomation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/UiAutomation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IAccessibilityServiceClientImpl"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/UiAutomation;


# direct methods
.method public constructor blacklist <init>(Landroid/app/UiAutomation;Landroid/os/Looper;I)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "generationId"    # I

    .line 1531
    iput-object p1, p0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;->this$0:Landroid/app/UiAutomation;

    .line 1532
    new-instance v0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;

    invoke-direct {v0, p1, p3}, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl$1;-><init>(Landroid/app/UiAutomation;I)V

    const/4 p1, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/accessibilityservice/AccessibilityService$Callbacks;)V

    .line 1663
    return-void
.end method
