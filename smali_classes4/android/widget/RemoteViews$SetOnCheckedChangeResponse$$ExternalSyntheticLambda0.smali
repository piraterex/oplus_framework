.class public final synthetic Landroid/widget/RemoteViews$SetOnCheckedChangeResponse$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;

.field public final synthetic blacklist f$1:Landroid/widget/RemoteViews$InteractionHandler;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;Landroid/widget/RemoteViews$InteractionHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse$$ExternalSyntheticLambda0;->f$0:Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;

    iput-object p2, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse$$ExternalSyntheticLambda0;->f$1:Landroid/widget/RemoteViews$InteractionHandler;

    return-void
.end method


# virtual methods
.method public final whitelist onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse$$ExternalSyntheticLambda0;->f$0:Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;

    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse$$ExternalSyntheticLambda0;->f$1:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->lambda$apply$0$android-widget-RemoteViews$SetOnCheckedChangeResponse(Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
