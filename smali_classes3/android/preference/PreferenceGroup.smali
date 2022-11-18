.class public abstract Landroid/preference/PreferenceGroup;
.super Landroid/preference/Preference;
.source "PreferenceGroup.java"

# interfaces
.implements Landroid/preference/GenericInflater$Parent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/preference/Preference;",
        "Landroid/preference/GenericInflater$Parent<",
        "Landroid/preference/Preference;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mAttachedToActivity:Z

.field private greylist-max-o mCurrentPreferenceOrder:I

.field private greylist-max-o mOrderingAsAdded:Z

.field private greylist-max-o mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 78
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Landroid/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    .line 62
    iput-boolean v0, p0, Landroid/preference/PreferenceGroup;->mAttachedToActivity:Z

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    .line 69
    sget-object v1, Lcom/android/internal/R$styleable;->PreferenceGroup:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 71
    .local v1, "a":Landroid/content/res/TypedArray;
    iget-boolean v2, p0, Landroid/preference/PreferenceGroup;->mOrderingAsAdded:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 73
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    return-void
.end method

.method private greylist-max-o removePreferenceInt(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .line 196
    monitor-enter p0

    .line 197
    :try_start_0
    invoke-virtual {p1}, Landroid/preference/Preference;->onPrepareForRemoval()V

    .line 198
    invoke-virtual {p1}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 199
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->assignParent(Landroid/preference/PreferenceGroup;)V

    .line 201
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public whitelist addItemFromInflater(Landroid/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroid/preference/Preference;

    .line 113
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 114
    return-void
.end method

.method public bridge synthetic blacklist addItemFromInflater(Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroup;->addItemFromInflater(Landroid/preference/Preference;)V

    return-void
.end method

.method public whitelist addPreference(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .line 142
    iget-object v0, p0, Landroid/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 144
    return v1

    .line 147
    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getOrder()I

    move-result v0

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_2

    .line 148
    iget-boolean v0, p0, Landroid/preference/PreferenceGroup;->mOrderingAsAdded:Z

    if-eqz v0, :cond_1

    .line 149
    iget v0, p0, Landroid/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOrder(I)V

    .line 152
    :cond_1
    instance-of v0, p1, Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_2

    .line 155
    move-object v0, p1

    check-cast v0, Landroid/preference/PreferenceGroup;

    iget-boolean v2, p0, Landroid/preference/PreferenceGroup;->mOrderingAsAdded:Z

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 159
    :cond_2
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroup;->onPrepareAddPreference(Landroid/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 160
    const/4 v0, 0x0

    return v0

    .line 163
    :cond_3
    monitor-enter p0

    .line 164
    :try_start_0
    iget-object v0, p0, Landroid/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 165
    .local v0, "insertionIndex":I
    if-gez v0, :cond_4

    .line 166
    mul-int/lit8 v2, v0, -0x1

    add-int/lit8 v0, v2, -0x1

    .line 168
    :cond_4
    iget-object v2, p0, Landroid/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 169
    .end local v0    # "insertionIndex":I
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    .line 172
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->assignParent(Landroid/preference/PreferenceGroup;)V

    .line 174
    iget-boolean v0, p0, Landroid/preference/PreferenceGroup;->mAttachedToActivity:Z

    if-eqz v0, :cond_5

    .line 175
    invoke-virtual {p1}, Landroid/preference/Preference;->onAttachedToActivity()V

    .line 178
    :cond_5
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->notifyHierarchyChanged()V

    .line 180
    return v1

    .line 169
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected whitelist dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .line 332
    invoke-super {p0, p1}, Landroid/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 335
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 336
    .local v0, "preferenceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 337
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 339
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected whitelist dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .line 321
    invoke-super {p0, p1}, Landroid/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 324
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 325
    .local v0, "preferenceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 326
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public whitelist findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .locals 5
    .param p1, "key"    # Ljava/lang/CharSequence;

    .line 243
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    return-object p0

    .line 246
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 247
    .local v0, "preferenceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 248
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 249
    .local v2, "preference":Landroid/preference/Preference;
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, "curKey":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 252
    return-object v2

    .line 255
    :cond_1
    instance-of v4, v2, Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_2

    .line 256
    move-object v4, v2

    check-cast v4, Landroid/preference/PreferenceGroup;

    .line 257
    invoke-virtual {v4, p1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 258
    .local v4, "returnedPreference":Landroid/preference/Preference;
    if-eqz v4, :cond_2

    .line 259
    return-object v4

    .line 247
    .end local v2    # "preference":Landroid/preference/Preference;
    .end local v3    # "curKey":Ljava/lang/String;
    .end local v4    # "returnedPreference":Landroid/preference/Preference;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getPreference(I)Landroid/preference/Preference;
    .locals 1
    .param p1, "index"    # I

    .line 131
    iget-object v0, p0, Landroid/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    return-object v0
.end method

.method public whitelist getPreferenceCount()I
    .locals 1

    .line 121
    iget-object v0, p0, Landroid/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected whitelist isOnSameScreenAsChildren()Z
    .locals 1

    .line 275
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isOrderingAsAdded()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Landroid/preference/PreferenceGroup;->mOrderingAsAdded:Z

    return v0
.end method

.method public whitelist notifyDependencyChange(Z)V
    .locals 3
    .param p1, "disableDependents"    # Z

    .line 303
    invoke-super {p0, p1}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    .line 307
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 308
    .local v0, "preferenceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 309
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Landroid/preference/Preference;->onParentChanged(Landroid/preference/Preference;Z)V

    .line 308
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 311
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected whitelist onAttachedToActivity()V
    .locals 3

    .line 280
    invoke-super {p0}, Landroid/preference/Preference;->onAttachedToActivity()V

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/PreferenceGroup;->mAttachedToActivity:Z

    .line 287
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 288
    .local v0, "preferenceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 289
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->onAttachedToActivity()V

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected whitelist onPrepareAddPreference(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .line 225
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroid/preference/Preference;->onParentChanged(Landroid/preference/Preference;Z)V

    .line 226
    const/4 v0, 0x1

    return v0
.end method

.method protected whitelist onPrepareForRemoval()V
    .locals 1

    .line 295
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/PreferenceGroup;->mAttachedToActivity:Z

    .line 299
    return-void
.end method

.method public whitelist removeAll()V
    .locals 3

    .line 209
    monitor-enter p0

    .line 210
    :try_start_0
    iget-object v0, p0, Landroid/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    .line 211
    .local v0, "preferenceList":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 212
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    invoke-direct {p0, v2}, Landroid/preference/PreferenceGroup;->removePreferenceInt(Landroid/preference/Preference;)Z

    .line 211
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 214
    .end local v0    # "preferenceList":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    .end local v1    # "i":I
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->notifyHierarchyChanged()V

    .line 216
    return-void

    .line 214
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public whitelist removePreference(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .line 190
    invoke-direct {p0, p1}, Landroid/preference/PreferenceGroup;->removePreferenceInt(Landroid/preference/Preference;)Z

    move-result v0

    .line 191
    .local v0, "returnValue":Z
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->notifyHierarchyChanged()V

    .line 192
    return v0
.end method

.method public whitelist setOrderingAsAdded(Z)V
    .locals 0
    .param p1, "orderingAsAdded"    # Z

    .line 96
    iput-boolean p1, p0, Landroid/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 97
    return-void
.end method

.method greylist-max-o sortPreferences()V
    .locals 1

    .line 314
    monitor-enter p0

    .line 315
    :try_start_0
    iget-object v0, p0, Landroid/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 316
    monitor-exit p0

    .line 317
    return-void

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
