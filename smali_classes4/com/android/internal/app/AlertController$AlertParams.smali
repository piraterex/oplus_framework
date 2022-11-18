.class public Lcom/android/internal/app/AlertController$AlertParams;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AlertController$AlertParams$AlertParamsWrapper;,
        Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public greylist mAdapter:Landroid/widget/ListAdapter;

.field public blacklist mAlertParamsExt:Landroid/app/dialog/IAlertParamsExt;

.field private blacklist mAlertParamsWrapper:Landroid/app/dialog/IAlertParamsWrapper;

.field public greylist mCancelable:Z

.field public greylist mCheckedItem:I

.field public greylist mCheckedItems:[Z

.field public final greylist mContext:Landroid/content/Context;

.field public greylist mCursor:Landroid/database/Cursor;

.field public greylist mCustomTitleView:Landroid/view/View;

.field public greylist-max-o mForceInverseBackground:Z

.field public greylist mIcon:Landroid/graphics/drawable/Drawable;

.field public greylist-max-o mIconAttrId:I

.field public greylist mIconId:I

.field public final greylist mInflater:Landroid/view/LayoutInflater;

.field public greylist mIsCheckedColumn:Ljava/lang/String;

.field public greylist mIsMultiChoice:Z

.field public greylist mIsSingleChoice:Z

.field public greylist mItems:[Ljava/lang/CharSequence;

.field public greylist mLabelColumn:Ljava/lang/String;

.field public greylist mMessage:Ljava/lang/CharSequence;

.field public greylist mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public greylist mNegativeButtonText:Ljava/lang/CharSequence;

.field public greylist mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public greylist mNeutralButtonText:Ljava/lang/CharSequence;

.field public greylist mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public greylist mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public greylist mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public greylist mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public greylist mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public greylist mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public greylist-max-o mOnPrepareListViewListener:Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;

.field public greylist mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public greylist mPositiveButtonText:Ljava/lang/CharSequence;

.field public greylist-max-o mRecycleOnMeasure:Z

.field public greylist mTitle:Ljava/lang/CharSequence;

.field public greylist mView:Landroid/view/View;

.field public greylist-max-o mViewLayoutResId:I

.field public greylist-max-o mViewSpacingBottom:I

.field public greylist-max-o mViewSpacingLeft:I

.field public greylist-max-o mViewSpacingRight:I

.field public greylist-max-o mViewSpacingSpecified:Z

.field public greylist-max-o mViewSpacingTop:I


# direct methods
.method public constructor greylist <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1067
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 1071
    iput v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconAttrId:I

    .line 1111
    iput-boolean v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 1118
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    .line 1132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 1139
    const-class v1, Landroid/app/dialog/IAlertParamsExt;

    invoke-static {v1}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/dialog/IAlertParamsExt;

    iput-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAlertParamsExt:Landroid/app/dialog/IAlertParamsExt;

    .line 1357
    new-instance v1, Lcom/android/internal/app/AlertController$AlertParams$AlertParamsWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/app/AlertController$AlertParams$AlertParamsWrapper;-><init>(Lcom/android/internal/app/AlertController$AlertParams;Lcom/android/internal/app/AlertController$AlertParams$AlertParamsWrapper-IA;)V

    iput-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAlertParamsWrapper:Landroid/app/dialog/IAlertParamsWrapper;

    .line 1158
    iput-object p1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 1159
    iput-boolean v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    .line 1160
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 1161
    return-void
.end method

.method private greylist-max-o createListView(Lcom/android/internal/app/AlertController;)V
    .locals 11
    .param p1, "dialog"    # Lcom/android/internal/app/AlertController;

    .line 1229
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {p1}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmListLayout(Lcom/android/internal/app/AlertController;)I

    move-result v1

    .line 1230
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/AlertController$RecycleListView;

    .line 1235
    .local v0, "listView":Lcom/android/internal/app/AlertController$RecycleListView;
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAlertParamsExt:Landroid/app/dialog/IAlertParamsExt;

    const/4 v8, 0x1

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    iget-boolean v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIsMultiChoice:Z

    invoke-interface {v1, v2, v3}, Landroid/app/dialog/IAlertParamsExt;->needHookAdapter(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Lcom/android/internal/globalactions/ActionsAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 1236
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAlertParamsExt:Landroid/app/dialog/IAlertParamsExt;

    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/app/dialog/IAlertParamsExt;->getHookAdapter(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Landroid/widget/ListAdapter;

    move-result-object v1

    .local v1, "adapter":Landroid/widget/ListAdapter;
    goto/16 :goto_1

    .line 1239
    .end local v1    # "adapter":Landroid/widget/ListAdapter;
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_3

    .line 1240
    iget-object v4, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v4, :cond_2

    .line 1241
    new-instance v9, Lcom/android/internal/app/AlertController$AlertParams$1;

    iget-object v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmMultiChoiceItemLayout(Lcom/android/internal/app/AlertController;)I

    move-result v4

    const v5, 0x1020014

    iget-object v6, p0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v1, v9

    move-object v2, p0

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/AlertController$AlertParams$1;-><init>(Lcom/android/internal/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/android/internal/app/AlertController$RecycleListView;)V

    .restart local v1    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_1

    .line 1256
    .end local v1    # "adapter":Landroid/widget/ListAdapter;
    :cond_2
    new-instance v9, Lcom/android/internal/app/AlertController$AlertParams$2;

    iget-object v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v6, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/AlertController$AlertParams$2;-><init>(Lcom/android/internal/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/android/internal/app/AlertController$RecycleListView;Lcom/android/internal/app/AlertController;)V

    .restart local v1    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_1

    .line 1285
    .end local v1    # "adapter":Landroid/widget/ListAdapter;
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_4

    .line 1286
    invoke-static {p1}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmSingleChoiceItemLayout(Lcom/android/internal/app/AlertController;)I

    move-result v1

    .local v1, "layout":I
    goto :goto_0

    .line 1288
    .end local v1    # "layout":I
    :cond_4
    invoke-static {p1}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmListItemLayout(Lcom/android/internal/app/AlertController;)I

    move-result v1

    .line 1291
    .restart local v1    # "layout":I
    :goto_0
    iget-object v5, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const v2, 0x1020014

    if-eqz v5, :cond_5

    .line 1292
    new-instance v9, Landroid/widget/SimpleCursorAdapter;

    iget-object v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    new-array v6, v8, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    new-array v10, v8, [I

    aput v2, v10, v7

    move-object v2, v9

    move v4, v1

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    move-object v1, v2

    .local v2, "adapter":Landroid/widget/ListAdapter;
    goto :goto_1

    .line 1294
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    :cond_5
    iget-object v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_6

    .line 1295
    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    move-object v1, v2

    .restart local v2    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_1

    .line 1297
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    :cond_6
    new-instance v3, Lcom/android/internal/app/AlertController$CheckedItemAdapter;

    iget-object v4, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v3, v4, v1, v2, v5}, Lcom/android/internal/app/AlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    move-object v2, v3

    .line 1300
    .restart local v2    # "adapter":Landroid/widget/ListAdapter;
    move-object v3, v2

    check-cast v3, Lcom/android/internal/app/AlertController$CheckedItemAdapter;

    iget-object v4, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAlertParamsExt:Landroid/app/dialog/IAlertParamsExt;

    invoke-static {v3, v4}, Lcom/android/internal/app/AlertController$CheckedItemAdapter;->-$$Nest$fputmAlertParamsExt(Lcom/android/internal/app/AlertController$CheckedItemAdapter;Landroid/app/dialog/IAlertParamsExt;)V

    move-object v1, v2

    .line 1305
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    .local v1, "adapter":Landroid/widget/ListAdapter;
    :goto_1
    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mOnPrepareListViewListener:Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v2, :cond_7

    .line 1306
    invoke-interface {v2, v0}, Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 1312
    :cond_7
    invoke-static {p1, v1}, Lcom/android/internal/app/AlertController;->-$$Nest$fputmAdapter(Lcom/android/internal/app/AlertController;Landroid/widget/ListAdapter;)V

    .line 1313
    iget v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    invoke-static {p1, v2}, Lcom/android/internal/app/AlertController;->-$$Nest$fputmCheckedItem(Lcom/android/internal/app/AlertController;I)V

    .line 1315
    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v2, :cond_8

    .line 1316
    new-instance v2, Lcom/android/internal/app/AlertController$AlertParams$3;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/app/AlertController$AlertParams$3;-><init>(Lcom/android/internal/app/AlertController$AlertParams;Lcom/android/internal/app/AlertController;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_2

    .line 1325
    :cond_8
    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v2, :cond_9

    .line 1326
    new-instance v2, Lcom/android/internal/app/AlertController$AlertParams$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/internal/app/AlertController$AlertParams$4;-><init>(Lcom/android/internal/app/AlertController$AlertParams;Lcom/android/internal/app/AlertController$RecycleListView;Lcom/android/internal/app/AlertController;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1339
    :cond_9
    :goto_2
    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v2, :cond_a

    .line 1340
    invoke-virtual {v0, v2}, Lcom/android/internal/app/AlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1343
    :cond_a
    iget-boolean v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v2, :cond_b

    .line 1344
    invoke-virtual {v0, v8}, Lcom/android/internal/app/AlertController$RecycleListView;->setChoiceMode(I)V

    goto :goto_3

    .line 1345
    :cond_b
    iget-boolean v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v2, :cond_c

    .line 1346
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/internal/app/AlertController$RecycleListView;->setChoiceMode(I)V

    .line 1350
    :cond_c
    :goto_3
    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAlertParamsExt:Landroid/app/dialog/IAlertParamsExt;

    if-eqz v2, :cond_d

    iget-boolean v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    iget-boolean v4, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIsMultiChoice:Z

    invoke-interface {v2, v0, v3, v4}, Landroid/app/dialog/IAlertParamsExt;->setListStyle(Landroid/widget/ListView;ZZ)V

    .line 1352
    :cond_d
    iget-boolean v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    iput-boolean v2, v0, Lcom/android/internal/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 1353
    iput-object v0, p1, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 1354
    return-void
.end method


# virtual methods
.method public greylist apply(Lcom/android/internal/app/AlertController;)V
    .locals 7
    .param p1, "dialog"    # Lcom/android/internal/app/AlertController;

    .line 1165
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1166
    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    goto :goto_0

    .line 1168
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 1169
    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 1171
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1172
    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1174
    :cond_2
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    if-eqz v0, :cond_3

    .line 1175
    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    .line 1177
    :cond_3
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconAttrId:I

    if-eqz v0, :cond_4

    .line 1178
    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->getIconAttributeResId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    .line 1181
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 1182
    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 1184
    :cond_5
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1185
    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v3, v1}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1188
    :cond_6
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 1189
    const/4 v2, -0x2

    iget-object v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v3, v1}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1192
    :cond_7
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 1193
    const/4 v2, -0x3

    iget-object v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v3, v1}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1196
    :cond_8
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    if-eqz v0, :cond_9

    .line 1197
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setInverseBackgroundForced(Z)V

    .line 1201
    :cond_9
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    .line 1202
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/internal/app/AlertController$AlertParams;->createListView(Lcom/android/internal/app/AlertController;)V

    .line 1204
    :cond_b
    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v2, :cond_d

    .line 1205
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_c

    .line 1206
    iget v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingLeft:I

    iget v4, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingTop:I

    iget v5, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingRight:I

    iget v6, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingBottom:I

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/AlertController;->setView(Landroid/view/View;IIII)V

    goto :goto_1

    .line 1209
    :cond_c
    invoke-virtual {p1, v2}, Lcom/android/internal/app/AlertController;->setView(Landroid/view/View;)V

    goto :goto_1

    .line 1211
    :cond_d
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewLayoutResId:I

    if-eqz v0, :cond_e

    .line 1212
    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setView(I)V

    .line 1217
    :cond_e
    :goto_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAlertParamsExt:Landroid/app/dialog/IAlertParamsExt;

    if-eqz v0, :cond_f

    iget-object v1, p1, Lcom/android/internal/app/AlertController;->mAlertControllerExt:Landroid/app/dialog/IAlertControllerExt;

    invoke-interface {v0, v1}, Landroid/app/dialog/IAlertParamsExt;->hookAlertParaApply(Landroid/app/dialog/IAlertControllerExt;)V

    .line 1226
    :cond_f
    return-void
.end method

.method public blacklist getWrapper()Landroid/app/dialog/IAlertParamsWrapper;
    .locals 1

    .line 1362
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAlertParamsWrapper:Landroid/app/dialog/IAlertParamsWrapper;

    return-object v0
.end method
