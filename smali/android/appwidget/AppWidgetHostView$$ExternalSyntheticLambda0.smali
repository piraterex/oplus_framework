.class public final synthetic Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/RemoteViews$InteractionHandler;


# instance fields
.field public final synthetic blacklist f$0:Landroid/appwidget/AppWidgetHostView;

.field public final synthetic blacklist f$1:Landroid/widget/RemoteViews$InteractionHandler;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews$InteractionHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda0;->f$0:Landroid/appwidget/AppWidgetHostView;

    iput-object p2, p0, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda0;->f$1:Landroid/widget/RemoteViews$InteractionHandler;

    return-void
.end method


# virtual methods
.method public final blacklist onInteraction(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 2

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda0;->f$0:Landroid/appwidget/AppWidgetHostView;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda0;->f$1:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/appwidget/AppWidgetHostView;->lambda$getHandler$1$android-appwidget-AppWidgetHostView(Landroid/widget/RemoteViews$InteractionHandler;Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z

    move-result p1

    return p1
.end method
