.class Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetOnCheckedChangeResponse"
.end annotation


# instance fields
.field private final blacklist mResponse:Landroid/widget/RemoteViews$RemoteResponse;

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews$RemoteResponse;)V
    .locals 0
    .param p2, "id"    # I
    .param p3, "response"    # Landroid/widget/RemoteViews$RemoteResponse;

    .line 1239
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 1240
    iput p2, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->viewId:I

    .line 1241
    iput-object p3, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->mResponse:Landroid/widget/RemoteViews$RemoteResponse;

    .line 1242
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 0
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 1244
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 1245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->viewId:I

    .line 1246
    new-instance p1, Landroid/widget/RemoteViews$RemoteResponse;

    invoke-direct {p1}, Landroid/widget/RemoteViews$RemoteResponse;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->mResponse:Landroid/widget/RemoteViews$RemoteResponse;

    .line 1247
    invoke-static {p1, p2}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$mreadFromParcel(Landroid/widget/RemoteViews$RemoteResponse;Landroid/os/Parcel;)V

    .line 1248
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .locals 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 1258
    iget v0, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1259
    .local v0, "target":Landroid/view/View;
    if-nez v0, :cond_0

    return-void

    .line 1260
    :cond_0
    instance-of v1, v0, Landroid/widget/CompoundButton;

    const-string v2, ")"

    const-string v3, "RemoteViews"

    if-nez v1, :cond_1

    .line 1261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setOnCheckedChange methods cannot be used on non-CompoundButton child (id: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->viewId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    return-void

    .line 1265
    :cond_1
    move-object v1, v0

    check-cast v1, Landroid/widget/CompoundButton;

    .line 1267
    .local v1, "button":Landroid/widget/CompoundButton;
    iget-object v4, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->mResponse:Landroid/widget/RemoteViews$RemoteResponse;

    invoke-static {v4}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$fgetmPendingIntent(Landroid/widget/RemoteViews$RemoteResponse;)Landroid/app/PendingIntent;

    move-result-object v4

    const v5, 0x1020459

    const/4 v6, 0x2

    if-eqz v4, :cond_3

    .line 1270
    iget-object v4, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->this$0:Landroid/widget/RemoteViews;

    invoke-virtual {v4, v6}, Landroid/widget/RemoteViews;->hasFlags(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1271
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot setOnCheckedChangePendingIntent for collection item (id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->viewId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    return-void

    .line 1275
    :cond_2
    const v2, 0x102041c

    iget-object v3, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->mResponse:Landroid/widget/RemoteViews$RemoteResponse;

    invoke-static {v3}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$fgetmPendingIntent(Landroid/widget/RemoteViews$RemoteResponse;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    goto :goto_0

    .line 1276
    :cond_3
    iget-object v2, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->mResponse:Landroid/widget/RemoteViews$RemoteResponse;

    invoke-static {v2}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$fgetmFillIntent(Landroid/widget/RemoteViews$RemoteResponse;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1277
    iget-object v2, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->this$0:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v6}, Landroid/widget/RemoteViews;->hasFlags(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1278
    const-string v2, "The method setOnCheckedChangeFillInIntent is available only from RemoteViewsFactory (ie. on collection items)."

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    return-void

    .line 1289
    :cond_4
    :goto_0
    new-instance v2, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p3}, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse$$ExternalSyntheticLambda0;-><init>(Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;Landroid/widget/RemoteViews$InteractionHandler;)V

    .line 1291
    .local v2, "onCheckedChangeListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    invoke-virtual {v1, v5, v2}, Landroid/widget/CompoundButton;->setTagInternal(ILjava/lang/Object;)V

    .line 1292
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1293
    return-void

    .line 1284
    .end local v2    # "onCheckedChangeListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1285
    invoke-virtual {v1, v5, v2}, Landroid/widget/CompoundButton;->setTagInternal(ILjava/lang/Object;)V

    .line 1286
    return-void
.end method

.method public blacklist getActionTag()I
    .locals 1

    .line 1297
    const/16 v0, 0x1d

    return v0
.end method

.method synthetic blacklist lambda$apply$0$android-widget-RemoteViews$SetOnCheckedChangeResponse(Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p2, "v"    # Landroid/widget/CompoundButton;
    .param p3, "isChecked"    # Z

    .line 1290
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->mResponse:Landroid/widget/RemoteViews$RemoteResponse;

    invoke-static {v0, p2, p1}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$mhandleViewInteraction(Landroid/widget/RemoteViews$RemoteResponse;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1251
    iget v0, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1252
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->mResponse:Landroid/widget/RemoteViews$RemoteResponse;

    invoke-static {v0, p1, p2}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$mwriteToParcel(Landroid/widget/RemoteViews$RemoteResponse;Landroid/os/Parcel;I)V

    .line 1253
    return-void
.end method
