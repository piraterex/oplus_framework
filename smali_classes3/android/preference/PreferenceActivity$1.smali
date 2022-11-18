.class Landroid/preference/PreferenceActivity$1;
.super Landroid/os/Handler;
.source "PreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/PreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/preference/PreferenceActivity;


# direct methods
.method constructor blacklist <init>(Landroid/preference/PreferenceActivity;)V
    .locals 0
    .param p1, "this$0"    # Landroid/preference/PreferenceActivity;

    .line 219
    iput-object p1, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 222
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 227
    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v1}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmHeaders(Landroid/preference/PreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 228
    .local v0, "oldHeaders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    iget-object v1, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v1}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmHeaders(Landroid/preference/PreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 229
    iget-object v1, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v1}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmHeaders(Landroid/preference/PreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceActivity;->onBuildHeaders(Ljava/util/List;)V

    .line 230
    iget-object v1, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v1}, Landroid/preference/PreferenceActivity;->access$000(Landroid/preference/PreferenceActivity;)Landroid/widget/ListAdapter;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v1}, Landroid/preference/PreferenceActivity;->access$100(Landroid/preference/PreferenceActivity;)Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 233
    :cond_0
    iget-object v1, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onGetNewHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    .line 234
    .local v1, "header":Landroid/preference/PreferenceActivity$Header;
    if-eqz v1, :cond_2

    iget-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 235
    iget-object v2, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-virtual {v2, v1, v0}, Landroid/preference/PreferenceActivity;->findBestMatchingHeader(Landroid/preference/PreferenceActivity$Header;Ljava/util/ArrayList;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v2

    .line 236
    .local v2, "mappedHeader":Landroid/preference/PreferenceActivity$Header;
    if-eqz v2, :cond_1

    iget-object v3, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v3}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmCurHeader(Landroid/preference/PreferenceActivity;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v3

    if-eq v3, v2, :cond_3

    .line 237
    :cond_1
    iget-object v3, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    goto :goto_0

    .line 239
    .end local v2    # "mappedHeader":Landroid/preference/PreferenceActivity$Header;
    :cond_2
    iget-object v2, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v2}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmCurHeader(Landroid/preference/PreferenceActivity;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 240
    iget-object v2, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v2}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmCurHeader(Landroid/preference/PreferenceActivity;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v3

    iget-object v4, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v4}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmHeaders(Landroid/preference/PreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/preference/PreferenceActivity;->findBestMatchingHeader(Landroid/preference/PreferenceActivity$Header;Ljava/util/ArrayList;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v2

    .line 241
    .restart local v2    # "mappedHeader":Landroid/preference/PreferenceActivity$Header;
    if-eqz v2, :cond_4

    .line 242
    iget-object v3, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    goto :goto_1

    .line 239
    .end local v2    # "mappedHeader":Landroid/preference/PreferenceActivity$Header;
    :cond_3
    :goto_0
    goto :goto_1

    .line 224
    .end local v0    # "oldHeaders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    .end local v1    # "header":Landroid/preference/PreferenceActivity$Header;
    :pswitch_1
    iget-object v0, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v0}, Landroid/preference/PreferenceActivity;->-$$Nest$mbindPreferences(Landroid/preference/PreferenceActivity;)V

    .line 225
    nop

    .line 247
    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
