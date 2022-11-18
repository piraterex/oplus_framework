.class Landroid/app/Activity$HostCallbacks;
.super Landroid/app/FragmentHostCallback;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HostCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/FragmentHostCallback<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/Activity;


# direct methods
.method public constructor blacklist <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/Activity;

    .line 9018
    iput-object p1, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    .line 9019
    invoke-direct {p0, p1}, Landroid/app/FragmentHostCallback;-><init>(Landroid/app/Activity;)V

    .line 9020
    return-void
.end method


# virtual methods
.method public whitelist onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 9105
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 9106
    return-void
.end method

.method public whitelist onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 9024
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 9025
    return-void
.end method

.method public whitelist onFindViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 9111
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onGetHost()Landroid/app/Activity;
    .locals 1

    .line 9049
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    return-object v0
.end method

.method public bridge synthetic whitelist onGetHost()Ljava/lang/Object;
    .locals 1

    .line 9017
    invoke-virtual {p0}, Landroid/app/Activity$HostCallbacks;->onGetHost()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onGetLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    .line 9034
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 9035
    .local v0, "result":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Landroid/app/Activity$HostCallbacks;->onUseFragmentManagerInflaterFactory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9036
    iget-object v1, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    return-object v1

    .line 9038
    :cond_0
    return-object v0
.end method

.method public whitelist onGetWindowAnimations()I
    .locals 2

    .line 9099
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 9100
    .local v0, "w":Landroid/view/Window;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :goto_0
    return v1
.end method

.method public whitelist onHasView()Z
    .locals 2

    .line 9116
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 9117
    .local v0, "w":Landroid/view/Window;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist onHasWindowAnimations()Z
    .locals 1

    .line 9094
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist onInvalidateOptionsMenu()V
    .locals 1

    .line 9054
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 9055
    return-void
.end method

.method public whitelist onRequestPermissionsFromFragment(Landroid/app/Fragment;[Ljava/lang/String;I)V
    .locals 4
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "requestCode"    # I

    .line 9087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@android:requestPermissions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9088
    .local v0, "who":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->buildRequestPermissionsIntent([Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 9089
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, p3, v3}, Landroid/app/Activity;->startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 9090
    return-void
.end method

.method public whitelist onShouldSaveFragmentState(Landroid/app/Fragment;)Z
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 9029
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public greylist-max-o onStartActivityAsUserFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 6
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .param p5, "user"    # Landroid/os/UserHandle;

    .line 9067
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Landroid/app/Activity;->-$$Nest$mstartActivityAsUserFromFragment(Landroid/app/Activity;Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 9069
    return-void
.end method

.method public whitelist onStartActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .line 9060
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 9061
    return-void
.end method

.method public whitelist onStartIntentSenderFromFragment(Landroid/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 11
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "extraFlags"    # I
    .param p8, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 9075
    move-object v0, p0

    iget-object v1, v0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 9076
    iget-object v2, v0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    move-object v1, p1

    iget-object v4, v1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    move-object v3, p2

    move v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p8

    invoke-virtual/range {v2 .. v9}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V

    goto :goto_0

    .line 9078
    :cond_0
    move-object v1, p1

    if-eqz p8, :cond_1

    .line 9079
    iget-object v2, v0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    iget-object v3, v2, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p8

    invoke-static/range {v3 .. v10}, Landroid/app/Activity;->-$$Nest$mstartIntentSenderFromFragment(Landroid/app/Activity;Landroid/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IILandroid/os/Bundle;)V

    .line 9082
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist onUseFragmentManagerInflaterFactory()Z
    .locals 2

    .line 9044
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
