.class Lcom/android/internal/app/ChooserActivity$2;
.super Landroid/app/SharedElementCallback;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;

    .line 746
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$2;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Landroid/app/SharedElementCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 749
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$2;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmRemoveSharedElements(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    const-string/jumbo v0, "screenshot_preview_image"

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 751
    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 754
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$2;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmRemoveSharedElements(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 755
    return-void
.end method
