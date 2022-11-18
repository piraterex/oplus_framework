.class Landroid/widget/RemoteViews$SetOnClickResponse;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetOnClickResponse"
.end annotation


# instance fields
.field final blacklist mResponse:Landroid/widget/RemoteViews$RemoteResponse;

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews$RemoteResponse;)V
    .locals 0
    .param p2, "id"    # I
    .param p3, "response"    # Landroid/widget/RemoteViews$RemoteResponse;

    .line 1159
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnClickResponse;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 1160
    iput p2, p0, Landroid/widget/RemoteViews$SetOnClickResponse;->viewId:I

    .line 1161
    iput-object p3, p0, Landroid/widget/RemoteViews$SetOnClickResponse;->mResponse:Landroid/widget/RemoteViews$RemoteResponse;

    .line 1162
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 0
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 1164
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnClickResponse;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 1165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$SetOnClickResponse;->viewId:I

    .line 1166
    new-instance p1, Landroid/widget/RemoteViews$RemoteResponse;

    invoke-direct {p1}, Landroid/widget/RemoteViews$RemoteResponse;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnClickResponse;->mResponse:Landroid/widget/RemoteViews$RemoteResponse;

    .line 1167
    invoke-static {p1, p2}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$mreadFromParcel(Landroid/widget/RemoteViews$RemoteResponse;Landroid/os/Parcel;)V

    .line 1168
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .locals 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 1178
    iget v0, p0, Landroid/widget/RemoteViews$SetOnClickResponse;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1179
    .local v0, "target":Landroid/view/View;
    if-nez v0, :cond_0

    return-void

    .line 1181
    :cond_0
    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnClickResponse;->mResponse:Landroid/widget/RemoteViews$RemoteResponse;

    invoke-static {v1}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$fgetmPendingIntent(Landroid/widget/RemoteViews$RemoteResponse;)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "RemoteViews"

    const v3, 0x102041c

    const/4 v4, 0x2

    if-eqz v1, :cond_2

    .line 1185
    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnClickResponse;->this$0:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v4}, Landroid/widget/RemoteViews;->hasFlags(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot SetOnClickResponse for collection item (id: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/widget/RemoteViews$SetOnClickResponse;->viewId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1192
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_1

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x10

    if-lt v2, v4, :cond_1

    .line 1194
    return-void

    .line 1197
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnClickResponse;->mResponse:Landroid/widget/RemoteViews$RemoteResponse;

    invoke-static {v1}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$fgetmPendingIntent(Landroid/widget/RemoteViews$RemoteResponse;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    goto :goto_0

    .line 1198
    :cond_2
    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnClickResponse;->mResponse:Landroid/widget/RemoteViews$RemoteResponse;

    invoke-static {v1}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$fgetmFillIntent(Landroid/widget/RemoteViews$RemoteResponse;)Landroid/content/Intent;

    move-result-object v1

    const v5, 0x10202ce

    if-eqz v1, :cond_5

    .line 1199
    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnClickResponse;->this$0:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v4}, Landroid/widget/RemoteViews;->hasFlags(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1200
    const-string v1, "The method setOnClickFillInIntent is available only from RemoteViewsFactory (ie. on collection items)."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    return-void

    .line 1204
    :cond_3
    if-ne v0, p1, :cond_4

    .line 1208
    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnClickResponse;->mResponse:Landroid/widget/RemoteViews$RemoteResponse;

    invoke-virtual {v0, v5, v1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 1209
    return-void

    .line 1218
    :cond_4
    :goto_0
    new-instance v1, Landroid/widget/RemoteViews$SetOnClickResponse$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p3}, Landroid/widget/RemoteViews$SetOnClickResponse$$ExternalSyntheticLambda0;-><init>(Landroid/widget/RemoteViews$SetOnClickResponse;Landroid/widget/RemoteViews$InteractionHandler;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1219
    return-void

    .line 1213
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1214
    invoke-virtual {v0, v3, v1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 1215
    invoke-virtual {v0, v5, v1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 1216
    return-void
.end method

.method public blacklist getActionTag()I
    .locals 1

    .line 1223
    const/4 v0, 0x1

    return v0
.end method

.method synthetic blacklist lambda$apply$0$android-widget-RemoteViews$SetOnClickResponse(Landroid/widget/RemoteViews$InteractionHandler;Landroid/view/View;)V
    .locals 1
    .param p1, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p2, "v"    # Landroid/view/View;

    .line 1218
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnClickResponse;->mResponse:Landroid/widget/RemoteViews$RemoteResponse;

    invoke-static {v0, p2, p1}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$mhandleViewInteraction(Landroid/widget/RemoteViews$RemoteResponse;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1171
    iget v0, p0, Landroid/widget/RemoteViews$SetOnClickResponse;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1172
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnClickResponse;->mResponse:Landroid/widget/RemoteViews$RemoteResponse;

    invoke-static {v0, p1, p2}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$mwriteToParcel(Landroid/widget/RemoteViews$RemoteResponse;Landroid/os/Parcel;I)V

    .line 1173
    return-void
.end method
