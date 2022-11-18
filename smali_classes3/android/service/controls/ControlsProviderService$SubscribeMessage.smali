.class Landroid/service/controls/ControlsProviderService$SubscribeMessage;
.super Ljava/lang/Object;
.source "ControlsProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/controls/ControlsProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubscribeMessage"
.end annotation


# instance fields
.field final blacklist mControlIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mSubscriber:Landroid/service/controls/IControlsSubscriber;


# direct methods
.method constructor blacklist <init>(Ljava/util/List;Landroid/service/controls/IControlsSubscriber;)V
    .locals 0
    .param p2, "subscriber"    # Landroid/service/controls/IControlsSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/service/controls/IControlsSubscriber;",
            ")V"
        }
    .end annotation

    .line 375
    .local p1, "controlIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    iput-object p1, p0, Landroid/service/controls/ControlsProviderService$SubscribeMessage;->mControlIds:Ljava/util/List;

    .line 377
    iput-object p2, p0, Landroid/service/controls/ControlsProviderService$SubscribeMessage;->mSubscriber:Landroid/service/controls/IControlsSubscriber;

    .line 378
    return-void
.end method
