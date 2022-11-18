.class Lcom/android/internal/accessibility/AccessibilityShortcutController$1;
.super Landroid/database/ContentObserver;
.source "AccessibilityShortcutController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/accessibility/AccessibilityShortcutController;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/accessibility/AccessibilityShortcutController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/accessibility/AccessibilityShortcutController;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 172
    iput-object p1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$1;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public blacklist onChange(ZLjava/util/Collection;II)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;II)V"
        }
    .end annotation

    .line 175
    .local p2, "uris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$1;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$fgetmUserId(Lcom/android/internal/accessibility/AccessibilityShortcutController;)I

    move-result v0

    if-ne p4, v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$1;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->onSettingsChanged()V

    .line 178
    :cond_0
    return-void
.end method
