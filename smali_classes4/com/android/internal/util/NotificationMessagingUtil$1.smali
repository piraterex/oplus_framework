.class Lcom/android/internal/util/NotificationMessagingUtil$1;
.super Landroid/database/ContentObserver;
.source "NotificationMessagingUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/NotificationMessagingUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/util/NotificationMessagingUtil;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/util/NotificationMessagingUtil;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/util/NotificationMessagingUtil;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 79
    iput-object p1, p0, Lcom/android/internal/util/NotificationMessagingUtil$1;->this$0:Lcom/android/internal/util/NotificationMessagingUtil;

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

    .line 82
    .local p2, "uris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    const-string/jumbo v0, "sms_default_application"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/internal/util/NotificationMessagingUtil$1;->this$0:Lcom/android/internal/util/NotificationMessagingUtil;

    invoke-static {v0, p4}, Lcom/android/internal/util/NotificationMessagingUtil;->-$$Nest$mcacheDefaultSmsApp(Lcom/android/internal/util/NotificationMessagingUtil;I)V

    .line 85
    :cond_0
    return-void
.end method
