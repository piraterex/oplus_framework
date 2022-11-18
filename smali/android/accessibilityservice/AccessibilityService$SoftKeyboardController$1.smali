.class Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$1;
.super Ljava/lang/Object;
.source "AccessibilityService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->dispatchSoftKeyboardShowModeChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

.field final synthetic blacklist val$listener:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;

.field final synthetic blacklist val$showMode:I


# direct methods
.method constructor blacklist <init>(Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    .line 2096
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$1;->this$0:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    iput-object p2, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$1;->val$listener:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;

    iput p3, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$1;->val$showMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 2099
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$1;->val$listener:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$1;->this$0:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    iget v2, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$1;->val$showMode:I

    invoke-interface {v0, v1, v2}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;->onShowModeChanged(Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;I)V

    .line 2100
    return-void
.end method
