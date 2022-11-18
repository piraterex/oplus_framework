.class final Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "MediaRouteControllerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MediaRouteControllerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/MediaRouteControllerDialog;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/app/MediaRouteControllerDialog;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/app/MediaRouteControllerDialog;Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;-><init>(Lcom/android/internal/app/MediaRouteControllerDialog;)V

    return-void
.end method


# virtual methods
.method public whitelist onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .line 334
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->-$$Nest$mupdate(Lcom/android/internal/app/MediaRouteControllerDialog;)Z

    .line 335
    return-void
.end method

.method public whitelist onRouteGrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;
    .param p3, "group"    # Landroid/media/MediaRouter$RouteGroup;
    .param p4, "index"    # I

    .line 347
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->-$$Nest$mupdate(Lcom/android/internal/app/MediaRouteControllerDialog;)Z

    .line 348
    return-void
.end method

.method public whitelist onRouteUngrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;
    .param p3, "group"    # Landroid/media/MediaRouter$RouteGroup;

    .line 352
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->-$$Nest$mupdate(Lcom/android/internal/app/MediaRouteControllerDialog;)Z

    .line 353
    return-void
.end method

.method public whitelist onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 329
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->-$$Nest$mupdate(Lcom/android/internal/app/MediaRouteControllerDialog;)Z

    .line 330
    return-void
.end method

.method public whitelist onRouteVolumeChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .line 339
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->-$$Nest$fgetmRoute(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->-$$Nest$mupdateVolume(Lcom/android/internal/app/MediaRouteControllerDialog;)V

    .line 342
    :cond_0
    return-void
.end method
